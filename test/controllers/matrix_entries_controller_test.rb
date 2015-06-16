require 'test_helper'

class MatrixEntriesControllerTest < ActionController::TestCase
  setup do
    @matrix_entry = matrix_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matrix_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matrix_entry" do
    assert_difference('MatrixEntry.count') do
      post :create, matrix_entry: { assistive_technology_id: @matrix_entry.assistive_technology_id, browser_reader_id: @matrix_entry.browser_reader_id, content_format_id: @matrix_entry.content_format_id, platform_id: @matrix_entry.platform_id, renderer_id: @matrix_entry.renderer_id }
    end

    assert_redirected_to matrix_entry_path(assigns(:matrix_entry))
  end

  test "should show matrix_entry" do
    get :show, id: @matrix_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matrix_entry
    assert_response :success
  end

  test "should update matrix_entry" do
    patch :update, id: @matrix_entry, matrix_entry: { assistive_technology_id: @matrix_entry.assistive_technology_id, browser_reader_id: @matrix_entry.browser_reader_id, content_format_id: @matrix_entry.content_format_id, platform_id: @matrix_entry.platform_id, renderer_id: @matrix_entry.renderer_id }
    assert_redirected_to matrix_entry_path(assigns(:matrix_entry))
  end

  test "should destroy matrix_entry" do
    assert_difference('MatrixEntry.count', -1) do
      delete :destroy, id: @matrix_entry
    end

    assert_redirected_to matrix_entries_path
  end
end
