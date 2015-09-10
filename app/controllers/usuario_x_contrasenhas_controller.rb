class UsuarioXContrasenhasController < ApplicationController
  before_action :set_usuario_x_contrasenha, only: [:show, :edit, :update, :destroy]

  # GET /usuario_x_contrasenhas
  # GET /usuario_x_contrasenhas.json
  def index
    @usuario_x_contrasenhas = UsuarioXContrasenha.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @usuario_x_contrasenhas }
      format.json { render json: @usuario_x_contrasenhas }
    end
  end

  # GET /usuario_x_contrasenhas/1
  # GET /usuario_x_contrasenhas/1.json
  def show
  end

  # GET /usuario_x_contrasenhas/new
  def new
    @usuario_x_contrasenha = UsuarioXContrasenha.new
  end

  # GET /usuario_x_contrasenhas/1/edit
  def edit
  end

  # POST /usuario_x_contrasenhas
  # POST /usuario_x_contrasenhas.json
  def create
    @usuario_x_contrasenha = UsuarioXContrasenha.new(usuario_x_contrasenha_params)

    respond_to do |format|
      if @usuario_x_contrasenha.save
        format.html { redirect_to @usuario_x_contrasenha, notice: 'Usuario x contrasenha was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usuario_x_contrasenha }
      else
        format.html { render action: 'new' }
        format.json { render json: @usuario_x_contrasenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuario_x_contrasenhas/1
  # PATCH/PUT /usuario_x_contrasenhas/1.json
  def update
    respond_to do |format|
      if @usuario_x_contrasenha.update(usuario_x_contrasenha_params)
        format.html { redirect_to @usuario_x_contrasenha, notice: 'Usuario x contrasenha was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usuario_x_contrasenha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuario_x_contrasenhas/1
  # DELETE /usuario_x_contrasenhas/1.json
  def destroy
    @usuario_x_contrasenha.destroy
    respond_to do |format|
      format.html { redirect_to usuario_x_contrasenhas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario_x_contrasenha
      @usuario_x_contrasenha = UsuarioXContrasenha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_x_contrasenha_params
      params.require(:usuario_x_contrasenha).permit(:usuario_id, :contrasenha_id)
    end
end
