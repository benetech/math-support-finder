require 'test_helper'

class ContentSourceConfigurationsControllerTest < ActionController::TestCase
  setup do
    @content_source_configuration = content_source_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_source_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_source_configuration" do
    assert_difference('ContentSourceConfiguration.count') do
      post :create, content_source_configuration: { configuration_id: @content_source_configuration.configuration_id, content_source_id: @content_source_configuration.content_source_id }
    end

    assert_redirected_to content_source_configuration_path(assigns(:content_source_configuration))
  end

  test "should show content_source_configuration" do
    get :show, id: @content_source_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_source_configuration
    assert_response :success
  end

  test "should update content_source_configuration" do
    patch :update, id: @content_source_configuration, content_source_configuration: { configuration_id: @content_source_configuration.configuration_id, content_source_id: @content_source_configuration.content_source_id }
    assert_redirected_to content_source_configuration_path(assigns(:content_source_configuration))
  end

  test "should destroy content_source_configuration" do
    assert_difference('ContentSourceConfiguration.count', -1) do
      delete :destroy, id: @content_source_configuration
    end

    assert_redirected_to content_source_configurations_path
  end
end
