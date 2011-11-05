require 'test_helper'

class FortressMetadataControllerTest < ActionController::TestCase
  setup do
    @fortress_metadatum = fortress_metadata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fortress_metadata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fortress_metadatum" do
    assert_difference('FortressMetadatum.count') do
      post :create, fortress_metadatum: @fortress_metadatum.attributes
    end

    assert_redirected_to fortress_metadatum_path(assigns(:fortress_metadatum))
  end

  test "should show fortress_metadatum" do
    get :show, id: @fortress_metadatum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fortress_metadatum.to_param
    assert_response :success
  end

  test "should update fortress_metadatum" do
    put :update, id: @fortress_metadatum.to_param, fortress_metadatum: @fortress_metadatum.attributes
    assert_redirected_to fortress_metadatum_path(assigns(:fortress_metadatum))
  end

  test "should destroy fortress_metadatum" do
    assert_difference('FortressMetadatum.count', -1) do
      delete :destroy, id: @fortress_metadatum.to_param
    end

    assert_redirected_to fortress_metadata_path
  end
end
