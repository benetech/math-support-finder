require 'test_helper'

class ConfigurationsControllerTest < ActionController::TestCase
  setup do
    @configuration = configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create configuration" do
    assert_difference('Configuration.count') do
      post :create, configuration: { assistive_technology_version_id: @configuration.assistive_technology_version_id, browser_reader_version_id: @configuration.browser_reader_version_id, format_id: @configuration.format_id, platform_version_id: @configuration.platform_version_id, platform_version_id: @configuration.platform_version_id, renderer_version_id: @configuration.renderer_version_id, workflow_status_id: @configuration.workflow_status_id }
    end

    assert_redirected_to configuration_path(assigns(:configuration))
  end

  test "should show configuration" do
    get :show, id: @configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @configuration
    assert_response :success
  end

  test "should update configuration" do
    patch :update, id: @configuration, configuration: { assistive_technology_version_id: @configuration.assistive_technology_version_id, browser_reader_version_id: @configuration.browser_reader_version_id, format_id: @configuration.format_id, platform_version_id: @configuration.platform_version_id, platform_version_id: @configuration.platform_version_id, renderer_version_id: @configuration.renderer_version_id, workflow_status_id: @configuration.workflow_status_id }
    assert_redirected_to configuration_path(assigns(:configuration))
  end

  test "should destroy configuration" do
    assert_difference('Configuration.count', -1) do
      delete :destroy, id: @configuration
    end

    assert_redirected_to configurations_path
  end
end
