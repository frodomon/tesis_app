class UbigeosController < ApplicationController
  before_action :set_ubigeo, only: [:show, :edit, :update, :destroy]

  # GET /ubigeos
  # GET /ubigeos.json
  def index
    @ubigeos = Ubigeo.all
  end

  # GET /ubigeos/1
  # GET /ubigeos/1.json
  def show
  end

  # GET /ubigeos/new
  def new
    @ubigeo = Ubigeo.new
  end

  # GET /ubigeos/1/edit
  def edit
  end

  # POST /ubigeos
  # POST /ubigeos.json
  def create
    @ubigeo = Ubigeo.new(ubigeo_params)

    respond_to do |format|
      if @ubigeo.save
        format.html { redirect_to @ubigeo, notice: 'Ubigeo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ubigeo }
      else
        format.html { render action: 'new' }
        format.json { render json: @ubigeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ubigeos/1
  # PATCH/PUT /ubigeos/1.json
  def update
    respond_to do |format|
      if @ubigeo.update(ubigeo_params)
        format.html { redirect_to @ubigeo, notice: 'Ubigeo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ubigeo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ubigeos/1
  # DELETE /ubigeos/1.json
  def destroy
    @ubigeo.destroy
    respond_to do |format|
      format.html { redirect_to ubigeos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ubigeo
      @ubigeo = Ubigeo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ubigeo_params
      params.require(:ubigeo).permit(:ubigeo_id, :name, :parent_id)
    end
end
