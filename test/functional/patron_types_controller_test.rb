require 'test_helper'

class PatronTypesControllerTest < ActionController::TestCase
  setup do
    @patron_type = patron_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patron_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patron_type" do
    assert_difference('PatronType.count') do
      post :create, patron_type: @patron_type.attributes
    end

    assert_redirected_to patron_type_path(assigns(:patron_type))
  end

  test "should show patron_type" do
    get :show, id: @patron_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patron_type.to_param
    assert_response :success
  end

  test "should update patron_type" do
    put :update, id: @patron_type.to_param, patron_type: @patron_type.attributes
    assert_redirected_to patron_type_path(assigns(:patron_type))
  end

  test "should destroy patron_type" do
    assert_difference('PatronType.count', -1) do
      delete :destroy, id: @patron_type.to_param
    end

    assert_redirected_to patron_types_path
  end
end
