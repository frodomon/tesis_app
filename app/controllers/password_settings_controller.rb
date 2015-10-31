class PasswordSettingsController < ApplicationController
  before_action :set_password_setting, only: [:show, :edit, :update, :destroy]

  # GET /password_settings
  # GET /password_settings.json
  def index
    @password_settings = PasswordSetting.all
  end

  # GET /password_settings/1
  # GET /password_settings/1.json
  def show
  end

  # GET /password_settings/new
  def new
    @password_setting = PasswordSetting.new
  end

  # GET /password_settings/1/edit
  def edit
  end

  # POST /password_settings
  # POST /password_settings.json
  def create
    @password_setting = PasswordSetting.new(password_setting_params)

    respond_to do |format|
      if @password_setting.save
        format.html { redirect_to @password_setting, notice: 'Password setting was successfully created.' }
        format.json { render action: 'show', status: :created, location: @password_setting }
      else
        format.html { render action: 'new' }
        format.json { render json: @password_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /password_settings/1
  # PATCH/PUT /password_settings/1.json
  def update
    respond_to do |format|
      if @password_setting.update(password_setting_params)
        format.html { redirect_to @password_setting, notice: 'Password setting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @password_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /password_settings/1
  # DELETE /password_settings/1.json
  def destroy
    @password_setting.destroy
    respond_to do |format|
      format.html { redirect_to password_settings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_password_setting
      @password_setting = PasswordSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def password_setting_params
      params.require(:password_setting).permit(:minLength, :minLetters, :minNumbers, :duration, :maxLoginFails)
    end
end
