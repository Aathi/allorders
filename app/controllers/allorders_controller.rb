class AllordersController < ApplicationController
  before_action :set_allorder, only: [:show, :edit, :update, :destroy]

  # GET /allorders
  # GET /allorders.json
  def index
    @allorders = Allorder.all
  end

  # GET /allorders/1
  # GET /allorders/1.json
  def show
  end

  # GET /allorders/new
  def new
    @allorder = Allorder.new
  end

  # GET /allorders/1/edit
  def edit
  end

  # POST /allorders
  # POST /allorders.json
  def create
    @allorder = Allorder.new(allorder_params)

    respond_to do |format|
      if @allorder.save
        format.html { redirect_to @allorder, notice: 'Allorder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @allorder }
      else
        format.html { render action: 'new' }
        format.json { render json: @allorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allorders/1
  # PATCH/PUT /allorders/1.json
  def update
    respond_to do |format|
      if @allorder.update(allorder_params)
        format.html { redirect_to @allorder, notice: 'Allorder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @allorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allorders/1
  # DELETE /allorders/1.json
  def destroy
    @allorder.destroy
    respond_to do |format|
      format.html { redirect_to allorders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allorder
      @allorder = Allorder.find(params[:ORDER_ID])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def allorder_params
      params.require(:allorder).permit(:CREATED_DATE, :PERFORMER, :CATEGORY, :DURATION, :QUALITY, :DELIVERY_TIME, :ORDER_STATE, :UPLOAD_VIDEO, :Performer_TOTAL, :C4U_commission, :Gross_Total)
    end
end
