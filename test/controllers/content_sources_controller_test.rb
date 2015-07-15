require 'test_helper'

class ContentSourcesControllerTest < ActionController::TestCase
  setup do
    @content_source = content_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_source" do
    assert_difference('ContentSource.count') do
      post :create, content_source: { notes: @content_source.notes, title: @content_source.title }
    end

    assert_redirected_to content_source_path(assigns(:content_source))
  end

  test "should show content_source" do
    get :show, id: @content_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_source
    assert_response :success
  end

  test "should update content_source" do
    patch :update, id: @content_source, content_source: { notes: @content_source.notes, title: @content_source.title }
    assert_redirected_to content_source_path(assigns(:content_source))
  end

  test "should destroy content_source" do
    assert_difference('ContentSource.count', -1) do
      delete :destroy, id: @content_source
    end

    assert_redirected_to content_sources_path
  end
end
