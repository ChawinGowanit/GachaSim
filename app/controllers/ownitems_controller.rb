class OwnitemsController < ApplicationController
  before_action :set_ownitem, only: %i[ show edit update destroy ]

  # GET /ownitems or /ownitems.json
  def index
    @ownitems = Ownitem.all
  end

  # GET /ownitems/1 or /ownitems/1.json
  def show
  end

  # GET /ownitems/new
  def new
    @ownitem = Ownitem.new
  end

  # GET /ownitems/1/edit
  def edit
  end

  # POST /ownitems or /ownitems.json
  def create
    @ownitem = Ownitem.new(ownitem_params)

    respond_to do |format|
      if @ownitem.save
        format.html { redirect_to @ownitem, notice: "Ownitem was successfully created." }
        format.json { render :show, status: :created, location: @ownitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ownitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ownitems/1 or /ownitems/1.json
  def update
    respond_to do |format|
      if @ownitem.update(ownitem_params)
        format.html { redirect_to @ownitem, notice: "Ownitem was successfully updated." }
        format.json { render :show, status: :ok, location: @ownitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ownitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ownitems/1 or /ownitems/1.json
  def destroy
    @ownitem.destroy
    respond_to do |format|
      format.html { redirect_to ownitems_url, notice: "Ownitem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ownitem
      @ownitem = Ownitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ownitem_params
      params.require(:ownitem).permit(:user_id, :item_id, :sellstatus, :price)
    end
end
