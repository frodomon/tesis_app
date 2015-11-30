class FinnancialProductTypesController < ApplicationController
  before_action :set_finnancial_product_type, only: [:show, :edit, :update, :destroy]

  # GET /finnancial_product_types
  # GET /finnancial_product_types.json
  def index
    @finnancial_product_types = FinnancialProductType.all
  end

  # GET /finnancial_product_types/1
  # GET /finnancial_product_types/1.json
  def show
  end

  # GET /finnancial_product_types/new
  def new
    @finnancial_product_type = FinnancialProductType.new
  end

  # GET /finnancial_product_types/1/edit
  def edit
  end

  # POST /finnancial_product_types
  # POST /finnancial_product_types.json
  def create
    @finnancial_product_type = FinnancialProductType.new(finnancial_product_type_params)

    respond_to do |format|
      if @finnancial_product_type.save
        format.html { redirect_to @finnancial_product_type, notice: 'Finnancial product type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @finnancial_product_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @finnancial_product_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finnancial_product_types/1
  # PATCH/PUT /finnancial_product_types/1.json
  def update
    respond_to do |format|
      if @finnancial_product_type.update(finnancial_product_type_params)
        format.html { redirect_to @finnancial_product_type, notice: 'Finnancial product type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @finnancial_product_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finnancial_product_types/1
  # DELETE /finnancial_product_types/1.json
  def destroy
    @finnancial_product_type.destroy
    @finnancial_product_types = FinnancialProductType.all
    respond_to do |format|
      format.html { redirect_to finnancial_product_types_url }
      format.json { head :no_content }
    end
  end

  def delete
    @finnancial_product_type = FinnancialProductType.find(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finnancial_product_type
      @finnancial_product_type = FinnancialProductType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finnancial_product_type_params
      params.require(:finnancial_product_type).permit(:name)
    end
end
