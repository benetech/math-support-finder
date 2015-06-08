require 'test_helper'

class BrowserReadersControllerTest < ActionController::TestCase
  setup do
    @browser_reader = browser_readers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:browser_readers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create browser_reader" do
    assert_difference('BrowserReader.count') do
      post :create, browser_reader: { description: @browser_reader.description, link: @browser_reader.link, title: @browser_reader.title, version: @browser_reader.version }
    end

    assert_redirected_to browser_reader_path(assigns(:browser_reader))
  end

  test "should show browser_reader" do
    get :show, id: @browser_reader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @browser_reader
    assert_response :success
  end

  test "should update browser_reader" do
    patch :update, id: @browser_reader, browser_reader: { description: @browser_reader.description, link: @browser_reader.link, title: @browser_reader.title, version: @browser_reader.version }
    assert_redirected_to browser_reader_path(assigns(:browser_reader))
  end

  test "should destroy browser_reader" do
    assert_difference('BrowserReader.count', -1) do
      delete :destroy, id: @browser_reader
    end

    assert_redirected_to browser_readers_path
  end
end
