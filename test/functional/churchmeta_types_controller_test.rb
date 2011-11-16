require 'test_helper'

class ChurchmetaTypesControllerTest < ActionController::TestCase
  setup do
    @churchmeta_type = churchmeta_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:churchmeta_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create churchmeta_type" do
    assert_difference('ChurchmetaType.count') do
      post :create, churchmeta_type: @churchmeta_type.attributes
    end

    assert_redirected_to churchmeta_type_path(assigns(:churchmeta_type))
  end

  test "should show churchmeta_type" do
    get :show, id: @churchmeta_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @churchmeta_type.to_param
    assert_response :success
  end

  test "should update churchmeta_type" do
    put :update, id: @churchmeta_type.to_param, churchmeta_type: @churchmeta_type.attributes
    assert_redirected_to churchmeta_type_path(assigns(:churchmeta_type))
  end

  test "should destroy churchmeta_type" do
    assert_difference('ChurchmetaType.count', -1) do
      delete :destroy, id: @churchmeta_type.to_param
    end

    assert_redirected_to churchmeta_types_path
  end
end
