require 'test_helper'

class ContentFormatsControllerTest < ActionController::TestCase
  setup do
    @content_format = content_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_format" do
    assert_difference('ContentFormat.count') do
      post :create, content_format: { description: @content_format.description, link: @content_format.link, title: @content_format.title, version: @content_format.version }
    end

    assert_redirected_to content_format_path(assigns(:content_format))
  end

  test "should show content_format" do
    get :show, id: @content_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_format
    assert_response :success
  end

  test "should update content_format" do
    patch :update, id: @content_format, content_format: { description: @content_format.description, link: @content_format.link, title: @content_format.title, version: @content_format.version }
    assert_redirected_to content_format_path(assigns(:content_format))
  end

  test "should destroy content_format" do
    assert_difference('ContentFormat.count', -1) do
      delete :destroy, id: @content_format
    end

    assert_redirected_to content_formats_path
  end
end
