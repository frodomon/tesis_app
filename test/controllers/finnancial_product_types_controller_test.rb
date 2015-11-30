require 'test_helper'

class FinnancialProductTypesControllerTest < ActionController::TestCase
  setup do
    @finnancial_product_type = finnancial_product_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finnancial_product_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finnancial_product_type" do
    assert_difference('FinnancialProductType.count') do
      post :create, finnancial_product_type: { name: @finnancial_product_type.name }
    end

    assert_redirected_to finnancial_product_type_path(assigns(:finnancial_product_type))
  end

  test "should show finnancial_product_type" do
    get :show, id: @finnancial_product_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finnancial_product_type
    assert_response :success
  end

  test "should update finnancial_product_type" do
    patch :update, id: @finnancial_product_type, finnancial_product_type: { name: @finnancial_product_type.name }
    assert_redirected_to finnancial_product_type_path(assigns(:finnancial_product_type))
  end

  test "should destroy finnancial_product_type" do
    assert_difference('FinnancialProductType.count', -1) do
      delete :destroy, id: @finnancial_product_type
    end

    assert_redirected_to finnancial_product_types_path
  end
end
