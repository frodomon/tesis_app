class FinnancialEntityTypesController < ApplicationController
  before_action :set_finnancial_entity_type, only: [:show, :edit, :update, :destroy]

  # GET /finnancial_entity_types
  # GET /finnancial_entity_types.json
  def index
    @finnancial_entity_types = FinnancialEntityType.all
  end

  # GET /finnancial_entity_types/1
  # GET /finnancial_entity_types/1.json
  def show
  end

  # GET /finnancial_entity_types/new
  def new
    @finnancial_entity_type = FinnancialEntityType.new
  end

  # GET /finnancial_entity_types/1/edit
  def edit
  end

  # POST /finnancial_entity_types
  # POST /finnancial_entity_types.json
  def create
    @finnancial_entity_type = FinnancialEntityType.new(finnancial_entity_type_params)

    respond_to do |format|
      if @finnancial_entity_type.save
        format.html { redirect_to @finnancial_entity_type, notice: 'Finnancial entity type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @finnancial_entity_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @finnancial_entity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /finnancial_entity_types/1
  # PATCH/PUT /finnancial_entity_types/1.json
  def update
    respond_to do |format|
      if @finnancial_entity_type.update(finnancial_entity_type_params)
        format.html { redirect_to @finnancial_entity_type, notice: 'Finnancial entity type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @finnancial_entity_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finnancial_entity_types/1
  # DELETE /finnancial_entity_types/1.json
  def destroy
    @finnancial_entity_type.destroy
    @finnancial_entity_types = FinnancialEntityType.all
    respond_to do |format|
      format.html { redirect_to finnancial_entity_types_url }
      format.json { head :no_content }
    end
  end
  def delete
    @finnancial_entity_type = FinnancialEntityType.find(params[:id])
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_finnancial_entity_type
      @finnancial_entity_type = FinnancialEntityType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def finnancial_entity_type_params
      params.require(:finnancial_entity_type).permit(:name)
    end
end
