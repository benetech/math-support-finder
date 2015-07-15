require 'test_helper'

class PlatformBrowserReadersControllerTest < ActionController::TestCase
  setup do
    @platform_browser_reader = platform_browser_readers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:platform_browser_readers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create platform_browser_reader" do
    assert_difference('PlatformBrowserReader.count') do
      post :create, platform_browser_reader: { browser_reader_id: @platform_browser_reader.browser_reader_id, platform_id: @platform_browser_reader.platform_id }
    end

    assert_redirected_to platform_browser_reader_path(assigns(:platform_browser_reader))
  end

  test "should show platform_browser_reader" do
    get :show, id: @platform_browser_reader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @platform_browser_reader
    assert_response :success
  end

  test "should update platform_browser_reader" do
    patch :update, id: @platform_browser_reader, platform_browser_reader: { browser_reader_id: @platform_browser_reader.browser_reader_id, platform_id: @platform_browser_reader.platform_id }
    assert_redirected_to platform_browser_reader_path(assigns(:platform_browser_reader))
  end

  test "should destroy platform_browser_reader" do
    assert_difference('PlatformBrowserReader.count', -1) do
      delete :destroy, id: @platform_browser_reader
    end

    assert_redirected_to platform_browser_readers_path
  end
end
