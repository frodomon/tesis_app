require 'test_helper'

class ContrasenhasControllerTest < ActionController::TestCase
  setup do
    @contrasenha = contrasenhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contrasenhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contrasenha" do
    assert_difference('Contrasenha.count') do
      post :create, contrasenha: { contrasenha: @contrasenha.contrasenha, fecCreacion: @contrasenha.fecCreacion, fecVencimiento: @contrasenha.fecVencimiento }
    end

    assert_redirected_to contrasenha_path(assigns(:contrasenha))
  end

  test "should show contrasenha" do
    get :show, id: @contrasenha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contrasenha
    assert_response :success
  end

  test "should update contrasenha" do
    patch :update, id: @contrasenha, contrasenha: { contrasenha: @contrasenha.contrasenha, fecCreacion: @contrasenha.fecCreacion, fecVencimiento: @contrasenha.fecVencimiento }
    assert_redirected_to contrasenha_path(assigns(:contrasenha))
  end

  test "should destroy contrasenha" do
    assert_difference('Contrasenha.count', -1) do
      delete :destroy, id: @contrasenha
    end

    assert_redirected_to contrasenhas_path
  end
end
