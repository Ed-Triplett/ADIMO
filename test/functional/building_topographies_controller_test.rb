require 'test_helper'

class BuildingTopographiesControllerTest < ActionController::TestCase
  setup do
    @building_topography = building_topographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:building_topographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create building_topography" do
    assert_difference('BuildingTopography.count') do
      post :create, building_topography: @building_topography.attributes
    end

    assert_redirected_to building_topography_path(assigns(:building_topography))
  end

  test "should show building_topography" do
    get :show, id: @building_topography.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @building_topography.to_param
    assert_response :success
  end

  test "should update building_topography" do
    put :update, id: @building_topography.to_param, building_topography: @building_topography.attributes
    assert_redirected_to building_topography_path(assigns(:building_topography))
  end

  test "should destroy building_topography" do
    assert_difference('BuildingTopography.count', -1) do
      delete :destroy, id: @building_topography.to_param
    end

    assert_redirected_to building_topographies_path
  end
end
