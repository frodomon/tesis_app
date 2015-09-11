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
    @usuario = Usuario.where(alias: params[:alias])
    user_id = @usuario.map(&:id)
    @uxc = UsuarioXContrasenha.find_by_sql ["SELECT * FROM usuario_x_contrasenhas WHERE (usuario_id = ?) ORDER BY created_at DESC LIMIT 1", user_id]
    pwd_id = @uxc.map(&:contrasenha_id)
    @pwd = Contrasenha.find_by_sql ["SELECT * FROM contrasenhas WHERE (contrasenhas.id = ?)",pwd_id]
    pwd = @pwd.map(&:contrasenha)[0]
    input_pwd = params[:pwd]
    if (pwd.eql?(input_pwd)) then @ws_usuario = '{ "login" : true }'
    else @ws_usuario = '{ "login" : false }'
    end

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
