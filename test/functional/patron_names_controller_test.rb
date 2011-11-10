require 'test_helper'

class PatronNamesControllerTest < ActionController::TestCase
  setup do
    @patron_name = patron_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patron_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patron_name" do
    assert_difference('PatronName.count') do
      post :create, patron_name: @patron_name.attributes
    end

    assert_redirected_to patron_name_path(assigns(:patron_name))
  end

  test "should show patron_name" do
    get :show, id: @patron_name.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patron_name.to_param
    assert_response :success
  end

  test "should update patron_name" do
    put :update, id: @patron_name.to_param, patron_name: @patron_name.attributes
    assert_redirected_to patron_name_path(assigns(:patron_name))
  end

  test "should destroy patron_name" do
    assert_difference('PatronName.count', -1) do
      delete :destroy, id: @patron_name.to_param
    end

    assert_redirected_to patron_names_path
  end
end
