require 'test_helper'

class BrowserReaderVersionsControllerTest < ActionController::TestCase
  setup do
    @browser_reader_version = browser_reader_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:browser_reader_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create browser_reader_version" do
    assert_difference('BrowserReaderVersion.count') do
      post :create, browser_reader_version: { browser_reader_id: @browser_reader_version.browser_reader_id, notes: @browser_reader_version.notes, version: @browser_reader_version.version }
    end

    assert_redirected_to browser_reader_version_path(assigns(:browser_reader_version))
  end

  test "should show browser_reader_version" do
    get :show, id: @browser_reader_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @browser_reader_version
    assert_response :success
  end

  test "should update browser_reader_version" do
    patch :update, id: @browser_reader_version, browser_reader_version: { browser_reader_id: @browser_reader_version.browser_reader_id, notes: @browser_reader_version.notes, version: @browser_reader_version.version }
    assert_redirected_to browser_reader_version_path(assigns(:browser_reader_version))
  end

  test "should destroy browser_reader_version" do
    assert_difference('BrowserReaderVersion.count', -1) do
      delete :destroy, id: @browser_reader_version
    end

    assert_redirected_to browser_reader_versions_path
  end
end
