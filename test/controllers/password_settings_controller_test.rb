require 'test_helper'

class PasswordSettingsControllerTest < ActionController::TestCase
  setup do
    @password_setting = password_settings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:password_settings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create password_setting" do
    assert_difference('PasswordSetting.count') do
      post :create, password_setting: { duration: @password_setting.duration, maxLoginFails: @password_setting.maxLoginFails, minLength: @password_setting.minLength, minLetters: @password_setting.minLetters, minNumbers: @password_setting.minNumbers }
    end

    assert_redirected_to password_setting_path(assigns(:password_setting))
  end

  test "should show password_setting" do
    get :show, id: @password_setting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @password_setting
    assert_response :success
  end

  test "should update password_setting" do
    patch :update, id: @password_setting, password_setting: { duration: @password_setting.duration, maxLoginFails: @password_setting.maxLoginFails, minLength: @password_setting.minLength, minLetters: @password_setting.minLetters, minNumbers: @password_setting.minNumbers }
    assert_redirected_to password_setting_path(assigns(:password_setting))
  end

  test "should destroy password_setting" do
    assert_difference('PasswordSetting.count', -1) do
      delete :destroy, id: @password_setting
    end

    assert_redirected_to password_settings_path
  end
end
