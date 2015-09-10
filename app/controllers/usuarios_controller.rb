class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @usuarios = Usuario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @usuarios }
      format.json { render json: @usuarios }
    end
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @usuarios }
      format.json { render json: @usuarios }
    end
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @usuarios }
      format.json { render json: @usuarios }
    end
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)

    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @usuario }
      else
        format.html { render action: 'new' }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url }
      format.json { head :no_content }
    end
  end

  def login 
   @ws_usuario= Usuario.find(:all, :select => 'usuarios.id as id, usuarios.alias as alias, usuarios.nombre as nombre, usuarios.apePaterno as apepaterno, usuarios.apeMaterno as apematerno, contrasenhas.contrasenha as constrasenha, contrasenhas.fecCreacion as fecha', :joins=> 'INNER JOIN usuario_x_contrasenhas on usuario_x_contrasenhas.usuario_id = usuarios.id INNER JOIN contrasenhas on contrasenhas.id=usuario_x_contrasenhas.contrasenha_id', :group => 'usuarios.id, usuarios.alias, usuarios.nombre, usuarios.apePaterno, usuarios.apeMaterno, contrasenhas.contrasenha', :conditions=>["alias = ?", params[:alias]], :order => "contrasenhas.fecCreacion DESC", :limit =>"1" )

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @ws_usuario }
      format.json { render json: @ws_usuario }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params
      params.require(:usuario).permit(:nombre, :apePaterno, :apeMaterno, :distrito_id, :fecNac, :sexo, :email, :telFijo, :telMovil, :alias, :saldo)
    end
end
