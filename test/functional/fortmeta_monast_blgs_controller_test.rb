require 'test_helper'

class FortmetaMonastBlgsControllerTest < ActionController::TestCase
  setup do
    @fortmeta_monast_blg = fortmeta_monast_blgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortmeta_monast_blgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortmeta_monast_blg" do
    assert_difference('FortmetaMonastBlg.count') do
      post :create, fortmeta_monast_blg: @fortmeta_monast_blg.attributes
    end

    assert_redirected_to fortmeta_monast_blg_path(assigns(:fortmeta_monast_blg))
  end

  test "should show fortmeta_monast_blg" do
    get :show, id: @fortmeta_monast_blg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortmeta_monast_blg.to_param
    assert_response :success
  end

  test "should update fortmeta_monast_blg" do
    put :update, id: @fortmeta_monast_blg.to_param, fortmeta_monast_blg: @fortmeta_monast_blg.attributes
    assert_redirected_to fortmeta_monast_blg_path(assigns(:fortmeta_monast_blg))
  end

  test "should destroy fortmeta_monast_blg" do
    assert_difference('FortmetaMonastBlg.count', -1) do
      delete :destroy, id: @fortmeta_monast_blg.to_param
    end

    assert_redirected_to fortmeta_monast_blgs_path
  end
end
