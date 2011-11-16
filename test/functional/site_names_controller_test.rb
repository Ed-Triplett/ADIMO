require 'test_helper'

class SiteNamesControllerTest < ActionController::TestCase
  setup do
    @site_name = site_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_name" do
    assert_difference('SiteName.count') do
      post :create, site_name: @site_name.attributes
    end

    assert_redirected_to site_name_path(assigns(:site_name))
  end

  test "should show site_name" do
    get :show, id: @site_name.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_name.to_param
    assert_response :success
  end

  test "should update site_name" do
    put :update, id: @site_name.to_param, site_name: @site_name.attributes
    assert_redirected_to site_name_path(assigns(:site_name))
  end

  test "should destroy site_name" do
    assert_difference('SiteName.count', -1) do
      delete :destroy, id: @site_name.to_param
    end

    assert_redirected_to site_names_path
  end
end
