require 'test_helper'

class FortmetaSettlementsControllerTest < ActionController::TestCase
  setup do
    @fortmeta_settlement = fortmeta_settlements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortmeta_settlements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortmeta_settlement" do
    assert_difference('FortmetaSettlement.count') do
      post :create, fortmeta_settlement: @fortmeta_settlement.attributes
    end

    assert_redirected_to fortmeta_settlement_path(assigns(:fortmeta_settlement))
  end

  test "should show fortmeta_settlement" do
    get :show, id: @fortmeta_settlement.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortmeta_settlement.to_param
    assert_response :success
  end

  test "should update fortmeta_settlement" do
    put :update, id: @fortmeta_settlement.to_param, fortmeta_settlement: @fortmeta_settlement.attributes
    assert_redirected_to fortmeta_settlement_path(assigns(:fortmeta_settlement))
  end

  test "should destroy fortmeta_settlement" do
    assert_difference('FortmetaSettlement.count', -1) do
      delete :destroy, id: @fortmeta_settlement.to_param
    end

    assert_redirected_to fortmeta_settlements_path
  end
end
