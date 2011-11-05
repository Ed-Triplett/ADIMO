require 'test_helper'

class MonasticMetadataControllerTest < ActionController::TestCase
  setup do
    @monastic_metadatum = monastic_metadata(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monastic_metadata)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monastic_metadatum" do
    assert_difference('MonasticMetadatum.count') do
      post :create, monastic_metadatum: @monastic_metadatum.attributes
    end

    assert_redirected_to monastic_metadatum_path(assigns(:monastic_metadatum))
  end

  test "should show monastic_metadatum" do
    get :show, id: @monastic_metadatum.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monastic_metadatum.to_param
    assert_response :success
  end

  test "should update monastic_metadatum" do
    put :update, id: @monastic_metadatum.to_param, monastic_metadatum: @monastic_metadatum.attributes
    assert_redirected_to monastic_metadatum_path(assigns(:monastic_metadatum))
  end

  test "should destroy monastic_metadatum" do
    assert_difference('MonasticMetadatum.count', -1) do
      delete :destroy, id: @monastic_metadatum.to_param
    end

    assert_redirected_to monastic_metadata_path
  end
end
