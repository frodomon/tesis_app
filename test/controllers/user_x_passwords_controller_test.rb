require 'test_helper'

class UserXPasswordsControllerTest < ActionController::TestCase
  setup do
    @user_x_password = user_x_passwords(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_x_passwords)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_x_password" do
    assert_difference('UserXPassword.count') do
      post :create, user_x_password: { password_id: @user_x_password.password_id, user_id: @user_x_password.user_id }
    end

    assert_redirected_to user_x_password_path(assigns(:user_x_password))
  end

  test "should show user_x_password" do
    get :show, id: @user_x_password
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_x_password
    assert_response :success
  end

  test "should update user_x_password" do
    patch :update, id: @user_x_password, user_x_password: { password_id: @user_x_password.password_id, user_id: @user_x_password.user_id }
    assert_redirected_to user_x_password_path(assigns(:user_x_password))
  end

  test "should destroy user_x_password" do
    assert_difference('UserXPassword.count', -1) do
      delete :destroy, id: @user_x_password
    end

    assert_redirected_to user_x_passwords_path
  end
end
