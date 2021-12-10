class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true


  def redeem_code(redeemcode)
    @user = self
    if redeemcode != nil
      @redeemcode = Redeemcode.find_by(code:redeemcode.code)
      if @redeemcode.status
        @user.update(credit:@user.credit+@redeemcode.creditAmount)
        puts @user.id
        @redeemcode.update(status:false,user_id:@user.id)
        @result = true
      else
        @result = false
      end
    else
      @result = false

    end
  end

  def pull(banner_id)
    @user = self
    if @user.credit < 120
      return false
    else
      @user.update(credit:@user.credit-120)
      @p = rand(1.00..100.00)
      if @p < 2.5
        @rarity = "SSR"
        @price = 6000
      elsif @p <21
        @rarity = "SR"
        @price = 600
      else
        @rarity = "R"
        @price = 60
      end

      @reciveItem = Item.joins("left join banneritems B on B.item_id = items.id left join banners BB on B.banner_id = BB.id").where("B.banner_id = #{banner_id}").where("items.rarity="+"'#{@rarity}'").order("rand()").limit(1).pluck(:id, :itemname, :rarity , :item_img_url)
      Ownitem.create(user_id:@user.id,item_id:@reciveItem[0][0],sellstatus:false,price:@price)
      return @reciveItem

    end
  end

  def pullx10(banner_id)
    @user = self
    if @user.credit < 1200
      return false
    else
      @ary = Array.new() 
      for i in 1..10 do
        @ary.push(pull(banner_id))
      end
      return @ary
    end
  end

  def getOwnItem
    @user = self
    return Ownitem.joins("left join items I on I.id = ownitems.item_id").where("ownitems.user_id = #{@user.id}").order("ownitems.updated_at desc").pluck(:sellstatus,:price,:itemname,:rarity,:item_img_url,:id)
  end


  def getSellItem
    @user = self
    return Ownitem.joins("left join items I on I.id = ownitems.item_id").where("ownitems.user_id != #{@user.id} and ownitems.sellstatus = 1").order("ownitems.updated_at desc").pluck(:sellstatus,:price,:itemname,:rarity,:item_img_url,:id)
  end
end
