class ContrasenhasController < ApplicationController
  before_action :set_contrasenha, only: [:show, :edit, :update, :destroy]

  # GET /contrasenhas
  # GET /contrasenhas.json
  def index
    @contrasenhas = Contrasenha.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @contrasenhas }
      format.json { render json: @contrasenhas }
    end
  end

  # GET /contrasenhas/1
  # GET /contrasenhas/1.json
  def show

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @contrasenha }
      format.json { render json: @contrasenha }
    end
  end

  # GET /contrasenhas/new
  def new
    @contrasenha = Contrasenha.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @contrasenha }
      format.json { render json: @contrasenha }
    end
  end

  # GET /contrasenhas/1/edit
  def edit
  end

  # POST /contrasenhas
  # POST /contrasenhas.json
  def create
    @contrasenha = Contrasenha.new(contrasenha_params)

    respond_to do |format|
      if @contrasenha.save
        format.html { redirect_to @contrasenha, notice: 'Contrasenha was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contrasenha }
      else
        format.html { render action: 'new' }
        format.json { render json: @contrasenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrasenhas/1
  # PATCH/PUT /contrasenhas/1.json
  def update
    respond_to do |format|
      if @contrasenha.update(contrasenha_params)
        format.html { redirect_to @contrasenha, notice: 'Contrasenha was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contrasenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrasenhas/1
  # DELETE /contrasenhas/1.json
  def destroy
    @contrasenha.destroy
    respond_to do |format|
      format.html { redirect_to contrasenhas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrasenha
      @contrasenha = Contrasenha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrasenha_params
      params.require(:contrasenha).permit(:contrasenha, :fecCreacion, :fecVencimiento)
    end
end
