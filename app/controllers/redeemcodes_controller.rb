class RedeemcodesController < ApplicationController
  before_action :set_redeemcode, only: %i[ show edit update destroy ]

  # GET /redeemcodes or /redeemcodes.json
  def index
    @redeemcodes = Redeemcode.all
  end

  # GET /redeemcodes/1 or /redeemcodes/1.json
  def show
  end

  # GET /redeemcodes/new
  def new
    @redeemcode = Redeemcode.new
    @redeemcode.status = true
  end

  # GET /redeemcodes/1/edit
  def edit
  end

  # POST /redeemcodes or /redeemcodes.json
  def create
    @redeemcode = Redeemcode.new(redeemcode_params)

    respond_to do |format|
      if @redeemcode.save
        format.html { redirect_to @redeemcode, notice: "Redeemcode was successfully created." }
        format.json { render :show, status: :created, location: @redeemcode }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @redeemcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redeemcodes/1 or /redeemcodes/1.json
  def update
    respond_to do |format|
      if @redeemcode.update(redeemcode_params)
        format.html { redirect_to @redeemcode, notice: "Redeemcode was successfully updated." }
        format.json { render :show, status: :ok, location: @redeemcode }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @redeemcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redeemcodes/1 or /redeemcodes/1.json
  def destroy
    @redeemcode.destroy
    respond_to do |format|
      format.html { redirect_to redeemcodes_url, notice: "Redeemcode was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redeemcode
      @redeemcode = Redeemcode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def redeemcode_params
      params.require(:redeemcode).permit(:code, :creditAmount, :status)
    end
end
