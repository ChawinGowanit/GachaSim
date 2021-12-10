class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy]
  before_action :logged_in, except: %i[ login check new create]
  before_action :is_current_user, only: %i[ show edit update destroy]


  # GET /users or /users.json
  def index
    @users = User.all
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    @user.credit = 0;
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def login
    @user = User.new
    session[:user_id] = nil
  end

  def check
    @commit = params[:commit]
    @uname = params[:user][:username]
    @upass = params[:user][:password]
    if(@commit == 'Login')
      @found = false
      @u = User.find_by(username:@uname)
      if(@u && @u.authenticate(@upass))
          redirect_to banners_path, notice: "Login successfully."
          @found = true
          session[:user_id] = @u.id
      end
      if(@found == false)
        redirect_to main_path, alert: "Incorrect username or Password."
      end
    elsif(@commit == 'Register')
      redirect_to new_user_path
    end
  end

  def like
    @banner_id = params[:banner_id]
    Like.create(banner_id: @banner_id, user_id: session[:user_id])
    redirect_to banners_path

  end

  def unlike
    @banner_id = params[:banner_id]
    Like.find_by(banner_id: @banner_id, user_id: session[:user_id]).destroy
    redirect_to banners_path
  end

  def credit
    @redeemcode = Redeemcode.new
    @transaction = Transaction.new
    @code = params[:code]
    @user = User.find(session[:user_id])
    @redeemLog = @redeemcode.get_redeem_log(@user)
    @sellLog = @transaction.get_sell_log(@user)
    @buyLog = @transaction.get_buy_log(@user)

  end

  def redeem
    @user = User.find(session[:user_id])
    @redeemcode = Redeemcode.find_by(redeemcode_params)
    @result = @user.redeem_code(@redeemcode)
    if @result
      redirect_to credit_path, notice: "Redeem successfully."
    else
      redirect_to credit_path, alert: "Invalid redeem code."
    end

  end

  def pull
    @banner_id = params[:banner_id]
    @user = User.find(session[:user_id])
    session[:item] = [@user.pull(@banner_id)]
    if !session[:item]
      redirect_to "/banners/#{params[:banner_id]}", alert: "Not enough credit."
    else
      redirect_to showResult_path(id: @banner_id)

    end
  end

  def pullx10
    @banner_id = params[:banner_id]
    @user = User.find(session[:user_id])
    session[:item] = @user.pullx10(@banner_id)
    if !session[:item]
      redirect_to "/banners/#{params[:banner_id]}", alert: "Not enough credit."
    else
      redirect_to showResult_path(id: @banner_id)
    end

  end

  def inventory
    @user = User.find(session[:user_id])
    @ownitem = @user.getOwnItem
  end

  def sell
    @item = Ownitem.find_by(id:params[:id])
    @item.update(sellstatus:true)
    redirect_to "/inventory"
  end

  def cancel
    @item = Ownitem.find_by(id:params[:id])
    @item.update(sellstatus:false)
    redirect_to "/inventory"

  end

  def market
    @user = User.find(session[:user_id])
    @sellitem = @user.getSellItem
    
  end

  def buy
    @user = User.find(session[:user_id])
    @sellitem = Ownitem.find_by(id:params[:id])
    @seller = User.find(@sellitem.user_id)
    if @user.credit < @sellitem.price
      redirect_to "/market", alert: "Not enough credit."
    else
      Transaction.create(buyeruserID:session[:user_id], selleruserID:@seller.id, price:@sellitem.price)
      @sellitem.update(user_id:@user.id,sellstatus:false)
      @user.update(credit:@user.credit-@sellitem.price)
      @seller.update(credit:@seller.credit+@sellitem.price)
      redirect_to "/market", notice: "Item recieved please check in your inventory."
    end
  end

  def showResult
    
  end

  private
    def logged_in
      if(session[:user_id])
       return true
      else
       redirect_to main_path, alert: "Please Login"
      end
    end

    def is_current_user
      if(session[:user_id].to_s == params[:id])
        return true
      else
        redirect_to users_path, alert: "You can't view/edit/destroy other users account"
      end
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :credit, :code)
    end

    def redeemcode_params
      params.require(:redeemcode).permit(:code)
    end
end
