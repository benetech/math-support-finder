require 'test_helper'

class BrowserReaderRenderersControllerTest < ActionController::TestCase
  setup do
    @browser_reader_renderer = browser_reader_renderers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:browser_reader_renderers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create browser_reader_renderer" do
    assert_difference('BrowserReaderRenderer.count') do
      post :create, browser_reader_renderer: { browser_reader_id: @browser_reader_renderer.browser_reader_id, renderer_id: @browser_reader_renderer.renderer_id }
    end

    assert_redirected_to browser_reader_renderer_path(assigns(:browser_reader_renderer))
  end

  test "should show browser_reader_renderer" do
    get :show, id: @browser_reader_renderer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @browser_reader_renderer
    assert_response :success
  end

  test "should update browser_reader_renderer" do
    patch :update, id: @browser_reader_renderer, browser_reader_renderer: { browser_reader_id: @browser_reader_renderer.browser_reader_id, renderer_id: @browser_reader_renderer.renderer_id }
    assert_redirected_to browser_reader_renderer_path(assigns(:browser_reader_renderer))
  end

  test "should destroy browser_reader_renderer" do
    assert_difference('BrowserReaderRenderer.count', -1) do
      delete :destroy, id: @browser_reader_renderer
    end

    assert_redirected_to browser_reader_renderers_path
  end
end
