require 'test_helper'

class ContentSourcesetupsControllerTest < ActionController::TestCase
  setup do
    @content_source_setup = content_source_setups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_source_setups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_source_setup" do
    assert_difference('ContentSourcesetup.count') do
      post :create, content_source_setup: { setup_id: @content_source_setup.setup_id, content_source_id: @content_source_setup.content_source_id }
    end

    assert_redirected_to content_source_setup_path(assigns(:content_source_setup))
  end

  test "should show content_source_setup" do
    get :show, id: @content_source_setup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_source_setup
    assert_response :success
  end

  test "should update content_source_setup" do
    patch :update, id: @content_source_setup, content_source_setup: { setup_id: @content_source_setup.setup_id, content_source_id: @content_source_setup.content_source_id }
    assert_redirected_to content_source_setup_path(assigns(:content_source_setup))
  end

  test "should destroy content_source_setup" do
    assert_difference('ContentSourcesetup.count', -1) do
      delete :destroy, id: @content_source_setup
    end

    assert_redirected_to content_source_setups_path
  end
end
