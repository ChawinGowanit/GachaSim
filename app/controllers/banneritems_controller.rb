class BanneritemsController < ApplicationController
  before_action :set_banneritem, only: %i[ show edit update destroy ]

  # GET /banneritems or /banneritems.json
  def index
    @banneritems = Banneritem.all
  end

  # GET /banneritems/1 or /banneritems/1.json
  def show
  end

  # GET /banneritems/new
  def new
    @banneritem = Banneritem.new
  end

  # GET /banneritems/1/edit
  def edit
  end

  # POST /banneritems or /banneritems.json
  def create
    @banneritem = Banneritem.new(banneritem_params)

    respond_to do |format|
      if @banneritem.save
        format.html { redirect_to @banneritem, notice: "Banneritem was successfully created." }
        format.json { render :show, status: :created, location: @banneritem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @banneritem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banneritems/1 or /banneritems/1.json
  def update
    respond_to do |format|
      if @banneritem.update(banneritem_params)
        format.html { redirect_to @banneritem, notice: "Banneritem was successfully updated." }
        format.json { render :show, status: :ok, location: @banneritem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @banneritem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banneritems/1 or /banneritems/1.json
  def destroy
    @banneritem.destroy
    respond_to do |format|
      format.html { redirect_to banneritems_url, notice: "Banneritem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banneritem
      @banneritem = Banneritem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banneritem_params
      params.require(:banneritem).permit(:banner_id, :item_id)
    end
end
