require 'test_helper'

class PlatformVersionsControllerTest < ActionController::TestCase
  setup do
    @platform_version = platform_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platform_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platform_version" do
    assert_difference('PlatformVersion.count') do
      post :create, platform_version: { notes: @platform_version.notes, platform_id: @platform_version.platform_id, version: @platform_version.version }
    end

    assert_redirected_to platform_version_path(assigns(:platform_version))
  end

  test "should show platform_version" do
    get :show, id: @platform_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @platform_version
    assert_response :success
  end

  test "should update platform_version" do
    patch :update, id: @platform_version, platform_version: { notes: @platform_version.notes, platform_id: @platform_version.platform_id, version: @platform_version.version }
    assert_redirected_to platform_version_path(assigns(:platform_version))
  end

  test "should destroy platform_version" do
    assert_difference('PlatformVersion.count', -1) do
      delete :destroy, id: @platform_version
    end

    assert_redirected_to platform_versions_path
  end
end
