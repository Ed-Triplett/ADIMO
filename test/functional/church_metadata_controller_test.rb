require 'test_helper'

class ChurchMetadataControllerTest < ActionController::TestCase
  setup do
    @church_metadatum = church_metadata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:church_metadata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create church_metadatum" do
    assert_difference('ChurchMetadatum.count') do
      post :create, church_metadatum: @church_metadatum.attributes
    end

    assert_redirected_to church_metadatum_path(assigns(:church_metadatum))
  end

  test "should show church_metadatum" do
    get :show, id: @church_metadatum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @church_metadatum.to_param
    assert_response :success
  end

  test "should update church_metadatum" do
    put :update, id: @church_metadatum.to_param, church_metadatum: @church_metadatum.attributes
    assert_redirected_to church_metadatum_path(assigns(:church_metadatum))
  end

  test "should destroy church_metadatum" do
    assert_difference('ChurchMetadatum.count', -1) do
      delete :destroy, id: @church_metadatum.to_param
    end

    assert_redirected_to church_metadata_path
  end
end
