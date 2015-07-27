require 'test_helper'

class SetupsControllerTest < ActionController::TestCase
  setup do
    @setup = setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create setup" do
    assert_difference('Setup.count') do
      post :create, setup: { assistive_technology_version_id: @setup.assistive_technology_version_id, browser_reader_version_id: @setup.browser_reader_version_id, file_format_id: @setup.file_format_id, platform_version_id: @setup.platform_version_id, renderer_version_id: @setup.renderer_version_id, workflow_status_id: @setup.workflow_status_id }
    end

    assert_redirected_to setup_path(assigns(:setup))
  end

  test "should show setup" do
    get :show, id: @setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @setup
    assert_response :success
  end

  test "should update setup" do
    patch :update, id: @setup, setup: { assistive_technology_version_id: @setup.assistive_technology_version_id, browser_reader_version_id: @setup.browser_reader_version_id, file_format_id: @setup.file_format_id, platform_version_id: @setup.platform_version_id, renderer_version_id: @setup.renderer_version_id, workflow_status_id: @setup.workflow_status_id }
    assert_redirected_to setup_path(assigns(:setup))
  end

  test "should destroy setup" do
    assert_difference('Setup.count', -1) do
      delete :destroy, id: @setup
    end

    assert_redirected_to setups_path
  end
end
