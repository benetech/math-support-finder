require 'test_helper'

class MediaAttachmentsControllerTest < ActionController::TestCase
  setup do
    @media_attachment = media_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_attachment" do
    assert_difference('MediaAttachment.count') do
      post :create, media_attachment: { link: @media_attachment.link, matrix_entry_id: @media_attachment.matrix_entry_id, title: @media_attachment.title, type: @media_attachment.type }
    end

    assert_redirected_to media_attachment_path(assigns(:media_attachment))
  end

  test "should show media_attachment" do
    get :show, id: @media_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_attachment
    assert_response :success
  end

  test "should update media_attachment" do
    patch :update, id: @media_attachment, media_attachment: { link: @media_attachment.link, matrix_entry_id: @media_attachment.matrix_entry_id, title: @media_attachment.title, type: @media_attachment.type }
    assert_redirected_to media_attachment_path(assigns(:media_attachment))
  end

  test "should destroy media_attachment" do
    assert_difference('MediaAttachment.count', -1) do
      delete :destroy, id: @media_attachment
    end

    assert_redirected_to media_attachments_path
  end
end
