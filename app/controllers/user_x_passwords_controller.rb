class UserXPasswordsController < ApplicationController
  before_action :set_user_x_password, only: [:show, :edit, :update, :destroy]

  # GET /user_x_passwords
  # GET /user_x_passwords.json
  def index
    @user_x_passwords = UserXPassword.all
  end

  # GET /user_x_passwords/1
  # GET /user_x_passwords/1.json
  def show
  end

  # GET /user_x_passwords/new
  def new
    @user_x_password = UserXPassword.new
  end

  # GET /user_x_passwords/1/edit
  def edit
  end

  # POST /user_x_passwords
  # POST /user_x_passwords.json
  def create
    @user_x_password = UserXPassword.new(user_x_password_params)

    respond_to do |format|
      if @user_x_password.save
        format.html { redirect_to @user_x_password, notice: 'User x password was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_x_password }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_x_password.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_x_passwords/1
  # PATCH/PUT /user_x_passwords/1.json
  def update
    respond_to do |format|
      if @user_x_password.update(user_x_password_params)
        format.html { redirect_to @user_x_password, notice: 'User x password was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_x_password.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_x_passwords/1
  # DELETE /user_x_passwords/1.json
  def destroy
    @user_x_password.destroy
    respond_to do |format|
      format.html { redirect_to user_x_passwords_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_x_password
      @user_x_password = UserXPassword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_x_password_params
      params.require(:user_x_password).permit(:user_id, :password_id)
    end
end
