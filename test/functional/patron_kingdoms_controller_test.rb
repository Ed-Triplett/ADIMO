require 'test_helper'

class PatronKingdomsControllerTest < ActionController::TestCase
  setup do
    @patron_kingdom = patron_kingdoms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patron_kingdoms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patron_kingdom" do
    assert_difference('PatronKingdom.count') do
      post :create, patron_kingdom: @patron_kingdom.attributes
    end

    assert_redirected_to patron_kingdom_path(assigns(:patron_kingdom))
  end

  test "should show patron_kingdom" do
    get :show, id: @patron_kingdom.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patron_kingdom.to_param
    assert_response :success
  end

  test "should update patron_kingdom" do
    put :update, id: @patron_kingdom.to_param, patron_kingdom: @patron_kingdom.attributes
    assert_redirected_to patron_kingdom_path(assigns(:patron_kingdom))
  end

  test "should destroy patron_kingdom" do
    assert_difference('PatronKingdom.count', -1) do
      delete :destroy, id: @patron_kingdom.to_param
    end

    assert_redirected_to patron_kingdoms_path
  end
end
