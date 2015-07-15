require 'test_helper'

class RendererVersionsControllerTest < ActionController::TestCase
  setup do
    @renderer_version = renderer_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:renderer_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create renderer_version" do
    assert_difference('RendererVersion.count') do
      post :create, renderer_version: { notes: @renderer_version.notes, renderer_id: @renderer_version.renderer_id, version: @renderer_version.version }
    end

    assert_redirected_to renderer_version_path(assigns(:renderer_version))
  end

  test "should show renderer_version" do
    get :show, id: @renderer_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @renderer_version
    assert_response :success
  end

  test "should update renderer_version" do
    patch :update, id: @renderer_version, renderer_version: { notes: @renderer_version.notes, renderer_id: @renderer_version.renderer_id, version: @renderer_version.version }
    assert_redirected_to renderer_version_path(assigns(:renderer_version))
  end

  test "should destroy renderer_version" do
    assert_difference('RendererVersion.count', -1) do
      delete :destroy, id: @renderer_version
    end

    assert_redirected_to renderer_versions_path
  end
end
