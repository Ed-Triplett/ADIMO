require 'test_helper'

class MonastmetaBldgsControllerTest < ActionController::TestCase
  setup do
    @monastmeta_bldg = monastmeta_bldgs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monastmeta_bldgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monastmeta_bldg" do
    assert_difference('MonastmetaBldg.count') do
      post :create, monastmeta_bldg: @monastmeta_bldg.attributes
    end

    assert_redirected_to monastmeta_bldg_path(assigns(:monastmeta_bldg))
  end

  test "should show monastmeta_bldg" do
    get :show, id: @monastmeta_bldg.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monastmeta_bldg.to_param
    assert_response :success
  end

  test "should update monastmeta_bldg" do
    put :update, id: @monastmeta_bldg.to_param, monastmeta_bldg: @monastmeta_bldg.attributes
    assert_redirected_to monastmeta_bldg_path(assigns(:monastmeta_bldg))
  end

  test "should destroy monastmeta_bldg" do
    assert_difference('MonastmetaBldg.count', -1) do
      delete :destroy, id: @monastmeta_bldg.to_param
    end

    assert_redirected_to monastmeta_bldgs_path
  end
end
