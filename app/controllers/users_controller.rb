class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
  def login 
    @user = User.where(alias: params[:alias])
    user_id = @user.map(&:id)
    @uxp = UserXPassword.find_by_sql ["SELECT * FROM user_x_passwords WHERE (user_id = ?) ORDER BY created_at DESC LIMIT 1", user_id]
    pwd_id = @uxp.map(&:password_id)
    @pwd = Password.find_by_sql ["SELECT * FROM passwords WHERE (passwords.id = ?)",pwd_id]
    pwd = @pwd.map(&:password)[0]
    input_pwd = params[:pwd]
    if (pwd.eql?(input_pwd)) then @ws_user = '{ "login" : true }'
    else @ws_user = '{ "login" : false }'
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @ws_user }
      format.json { render json: @ws_user }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :lastName, :ubigeo_id, :birthDate, :genre, :email, :phone, :mobile, :alias, :balance)
    end
end
