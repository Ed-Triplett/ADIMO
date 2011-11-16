require 'test_helper'

class FortmetaPlantypesControllerTest < ActionController::TestCase
  setup do
    @fortmeta_plantype = fortmeta_plantypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortmeta_plantypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortmeta_plantype" do
    assert_difference('FortmetaPlantype.count') do
      post :create, fortmeta_plantype: @fortmeta_plantype.attributes
    end

    assert_redirected_to fortmeta_plantype_path(assigns(:fortmeta_plantype))
  end

  test "should show fortmeta_plantype" do
    get :show, id: @fortmeta_plantype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortmeta_plantype.to_param
    assert_response :success
  end

  test "should update fortmeta_plantype" do
    put :update, id: @fortmeta_plantype.to_param, fortmeta_plantype: @fortmeta_plantype.attributes
    assert_redirected_to fortmeta_plantype_path(assigns(:fortmeta_plantype))
  end

  test "should destroy fortmeta_plantype" do
    assert_difference('FortmetaPlantype.count', -1) do
      delete :destroy, id: @fortmeta_plantype.to_param
    end

    assert_redirected_to fortmeta_plantypes_path
  end
end
