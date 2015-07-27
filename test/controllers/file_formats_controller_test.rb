require 'test_helper'

class FileFileFormatsControllerTest < ActionController::TestCase
  setup do
    @file_format = file_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:file_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create file_format" do
    assert_difference('FileFileFormat.count') do
      post :create, file_format: { notes: @file_format.notes, title: @file_format.title }
    end

    assert_redirected_to file_format_path(assigns(:file_format))
  end

  test "should show file_format" do
    get :show, id: @file_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @file_format
    assert_response :success
  end

  test "should update file_format" do
    patch :update, id: @file_format, file_format: { notes: @file_format.notes, title: @file_format.title }
    assert_redirected_to file_format_path(assigns(:file_format))
  end

  test "should destroy file_format" do
    assert_difference('FileFileFormat.count', -1) do
      delete :destroy, id: @file_format
    end

    assert_redirected_to file_formats_path
  end
end
