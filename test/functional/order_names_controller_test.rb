require 'test_helper'

class OrderNamesControllerTest < ActionController::TestCase
  setup do
    @order_name = order_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_name" do
    assert_difference('OrderName.count') do
      post :create, order_name: @order_name.attributes
    end

    assert_redirected_to order_name_path(assigns(:order_name))
  end

  test "should show order_name" do
    get :show, id: @order_name.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_name.to_param
    assert_response :success
  end

  test "should update order_name" do
    put :update, id: @order_name.to_param, order_name: @order_name.attributes
    assert_redirected_to order_name_path(assigns(:order_name))
  end

  test "should destroy order_name" do
    assert_difference('OrderName.count', -1) do
      delete :destroy, id: @order_name.to_param
    end

    assert_redirected_to order_names_path
  end
end
