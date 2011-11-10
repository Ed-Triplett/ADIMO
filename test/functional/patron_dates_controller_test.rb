require 'test_helper'

class PatronDatesControllerTest < ActionController::TestCase
  setup do
    @patron_date = patron_dates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patron_dates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patron_date" do
    assert_difference('PatronDate.count') do
      post :create, patron_date: @patron_date.attributes
    end

    assert_redirected_to patron_date_path(assigns(:patron_date))
  end

  test "should show patron_date" do
    get :show, id: @patron_date.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patron_date.to_param
    assert_response :success
  end

  test "should update patron_date" do
    put :update, id: @patron_date.to_param, patron_date: @patron_date.attributes
    assert_redirected_to patron_date_path(assigns(:patron_date))
  end

  test "should destroy patron_date" do
    assert_difference('PatronDate.count', -1) do
      delete :destroy, id: @patron_date.to_param
    end

    assert_redirected_to patron_dates_path
  end
end
