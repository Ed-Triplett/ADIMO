require 'test_helper'

class MilordersNamesControllerTest < ActionController::TestCase
  setup do
    @milorders_name = milorders_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:milorders_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create milorders_name" do
    assert_difference('MilordersName.count') do
      post :create, milorders_name: @milorders_name.attributes
    end

    assert_redirected_to milorders_name_path(assigns(:milorders_name))
  end

  test "should show milorders_name" do
    get :show, id: @milorders_name.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @milorders_name.to_param
    assert_response :success
  end

  test "should update milorders_name" do
    put :update, id: @milorders_name.to_param, milorders_name: @milorders_name.attributes
    assert_redirected_to milorders_name_path(assigns(:milorders_name))
  end

  test "should destroy milorders_name" do
    assert_difference('MilordersName.count', -1) do
      delete :destroy, id: @milorders_name.to_param
    end

    assert_redirected_to milorders_names_path
  end
end
