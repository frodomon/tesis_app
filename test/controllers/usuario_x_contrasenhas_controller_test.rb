require 'test_helper'

class UsuarioXContrasenhasControllerTest < ActionController::TestCase
  setup do
    @usuario_x_contrasenha = usuario_x_contrasenhas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usuario_x_contrasenhas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usuario_x_contrasenha" do
    assert_difference('UsuarioXContrasenha.count') do
      post :create, usuario_x_contrasenha: { contrasenha_id: @usuario_x_contrasenha.contrasenha_id, usuario_id: @usuario_x_contrasenha.usuario_id }
    end

    assert_redirected_to usuario_x_contrasenha_path(assigns(:usuario_x_contrasenha))
  end

  test "should show usuario_x_contrasenha" do
    get :show, id: @usuario_x_contrasenha
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usuario_x_contrasenha
    assert_response :success
  end

  test "should update usuario_x_contrasenha" do
    patch :update, id: @usuario_x_contrasenha, usuario_x_contrasenha: { contrasenha_id: @usuario_x_contrasenha.contrasenha_id, usuario_id: @usuario_x_contrasenha.usuario_id }
    assert_redirected_to usuario_x_contrasenha_path(assigns(:usuario_x_contrasenha))
  end

  test "should destroy usuario_x_contrasenha" do
    assert_difference('UsuarioXContrasenha.count', -1) do
      delete :destroy, id: @usuario_x_contrasenha
    end

    assert_redirected_to usuario_x_contrasenhas_path
  end
end
