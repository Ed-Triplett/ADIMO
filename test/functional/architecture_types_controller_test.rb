require 'test_helper'

class ArchitectureTypesControllerTest < ActionController::TestCase
  setup do
    @architecture_type = architecture_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:architecture_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create architecture_type" do
    assert_difference('ArchitectureType.count') do
      post :create, :architecture_type => @architecture_type.attributes
    end

    assert_redirected_to architecture_type_path(assigns(:architecture_type))
  end

  test "should show architecture_type" do
    get :show, :id => @architecture_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @architecture_type.to_param
    assert_response :success
  end

  test "should update architecture_type" do
    put :update, :id => @architecture_type.to_param, :architecture_type => @architecture_type.attributes
    assert_redirected_to architecture_type_path(assigns(:architecture_type))
  end

  test "should destroy architecture_type" do
    assert_difference('ArchitectureType.count', -1) do
      delete :destroy, :id => @architecture_type.to_param
    end

    assert_redirected_to architecture_types_path
  end
end
