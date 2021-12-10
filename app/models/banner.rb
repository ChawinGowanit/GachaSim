class Banner < ApplicationRecord
	has_many :likes

	def getBannerItem
		@banner_id = self.id
		return Item.joins("left join banneritems B on B.item_id = items.id left join banners BB on B.banner_id = BB.id").where("B.banner_id = #{@banner_id}").pluck(:itemname, :rarity , :item_img_url)
	end

	def getBannerPic
		@banner_id = self.id
      	return Item.joins("left join banneritems B on B.item_id = items.id left join banners BB on B.banner_id = BB.id").where("B.banner_id = #{@banner_id}").where("items.rarity='SSR'").order("rand()").limit(3).pluck(:itemname,:item_img_url)
	end

end
