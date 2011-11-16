require 'test_helper'

class SitePrincipalitiesControllerTest < ActionController::TestCase
  setup do
    @site_principality = site_principalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_principalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_principality" do
    assert_difference('SitePrincipality.count') do
      post :create, site_principality: @site_principality.attributes
    end

    assert_redirected_to site_principality_path(assigns(:site_principality))
  end

  test "should show site_principality" do
    get :show, id: @site_principality.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_principality.to_param
    assert_response :success
  end

  test "should update site_principality" do
    put :update, id: @site_principality.to_param, site_principality: @site_principality.attributes
    assert_redirected_to site_principality_path(assigns(:site_principality))
  end

  test "should destroy site_principality" do
    assert_difference('SitePrincipality.count', -1) do
      delete :destroy, id: @site_principality.to_param
    end

    assert_redirected_to site_principalities_path
  end
end
