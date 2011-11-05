require 'test_helper'

class MilitaryOrdersControllerTest < ActionController::TestCase
  setup do
    @military_order = military_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:military_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create military_order" do
    assert_difference('MilitaryOrder.count') do
      post :create, military_order: @military_order.attributes
    end

    assert_redirected_to military_order_path(assigns(:military_order))
  end

  test "should show military_order" do
    get :show, id: @military_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @military_order.to_param
    assert_response :success
  end

  test "should update military_order" do
    put :update, id: @military_order.to_param, military_order: @military_order.attributes
    assert_redirected_to military_order_path(assigns(:military_order))
  end

  test "should destroy military_order" do
    assert_difference('MilitaryOrder.count', -1) do
      delete :destroy, id: @military_order.to_param
    end

    assert_redirected_to military_orders_path
  end
end
