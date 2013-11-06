class UpdateallordersController < ApplicationController
  before_action :set_updateallorder, only: [:show, :edit, :update, :destroy]

  # GET /updateallorders
  # GET /updateallorders.json
  def index
    @updateallorders = Updateallorder.all
  end

  # GET /updateallorders/1
  # GET /updateallorders/1.json
  def show
  end

  # GET /updateallorders/new
  def new
    @updateallorder = Updateallorder.new
  end

  # GET /updateallorders/1/edit
  def edit
  end

  # POST /updateallorders
  # POST /updateallorders.json
  def create
    @updateallorder = Updateallorder.new(updateallorder_params)

    respond_to do |format|
      if @updateallorder.save
        format.html { redirect_to @updateallorder, notice: 'Updateallorder was successfully created.' }
        format.json { render action: 'show', status: :created, location: @updateallorder }
      else
        format.html { render action: 'new' }
        format.json { render json: @updateallorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /updateallorders/1
  # PATCH/PUT /updateallorders/1.json
  def update
    respond_to do |format|
      if @updateallorder.update(updateallorder_params)
        format.html { redirect_to @updateallorder, notice: 'Updateallorder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @updateallorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /updateallorders/1
  # DELETE /updateallorders/1.json
  def destroy
    @updateallorder.destroy
    respond_to do |format|
      format.html { redirect_to updateallorders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_updateallorder
      @updateallorder = Updateallorder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def updateallorder_params
      params.require(:updateallorder).permit(:CREATED_DATE, :PERFORMER, :CATEGORY, :DURATION, :QUALITY, :DELIVERY_TIME, :ORDER_STATE, :UPLOAD_VIDEO, :Performer_TOTAL, :C4U_commission, :Gross_Total)
    end
end
