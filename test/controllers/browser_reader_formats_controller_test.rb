require 'test_helper'

class BrowserReaderFormatsControllerTest < ActionController::TestCase
  setup do
    @browser_reader_format = browser_reader_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:browser_reader_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create browser_reader_format" do
    assert_difference('BrowserReaderFormat.count') do
      post :create, browser_reader_format: { browser_reader_id: @browser_reader_format.browser_reader_id, format_id: @browser_reader_format.format_id }
    end

    assert_redirected_to browser_reader_format_path(assigns(:browser_reader_format))
  end

  test "should show browser_reader_format" do
    get :show, id: @browser_reader_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @browser_reader_format
    assert_response :success
  end

  test "should update browser_reader_format" do
    patch :update, id: @browser_reader_format, browser_reader_format: { browser_reader_id: @browser_reader_format.browser_reader_id, format_id: @browser_reader_format.format_id }
    assert_redirected_to browser_reader_format_path(assigns(:browser_reader_format))
  end

  test "should destroy browser_reader_format" do
    assert_difference('BrowserReaderFormat.count', -1) do
      delete :destroy, id: @browser_reader_format
    end

    assert_redirected_to browser_reader_formats_path
  end
end
