require 'test_helper'

class FinnancialEntityTypesControllerTest < ActionController::TestCase
  setup do
    @finnancial_entity_type = finnancial_entity_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:finnancial_entity_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finnancial_entity_type" do
    assert_difference('FinnancialEntityType.count') do
      post :create, finnancial_entity_type: { name: @finnancial_entity_type.name }
    end

    assert_redirected_to finnancial_entity_type_path(assigns(:finnancial_entity_type))
  end

  test "should show finnancial_entity_type" do
    get :show, id: @finnancial_entity_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @finnancial_entity_type
    assert_response :success
  end

  test "should update finnancial_entity_type" do
    patch :update, id: @finnancial_entity_type, finnancial_entity_type: { name: @finnancial_entity_type.name }
    assert_redirected_to finnancial_entity_type_path(assigns(:finnancial_entity_type))
  end

  test "should destroy finnancial_entity_type" do
    assert_difference('FinnancialEntityType.count', -1) do
      delete :destroy, id: @finnancial_entity_type
    end

    assert_redirected_to finnancial_entity_types_path
  end
end
