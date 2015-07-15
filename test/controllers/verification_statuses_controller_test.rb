require 'test_helper'

class VerificationStatusesControllerTest < ActionController::TestCase
  setup do
    @verification_status = verification_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verification_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verification_status" do
    assert_difference('VerificationStatus.count') do
      post :create, verification_status: { title: @verification_status.title }
    end

    assert_redirected_to verification_status_path(assigns(:verification_status))
  end

  test "should show verification_status" do
    get :show, id: @verification_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verification_status
    assert_response :success
  end

  test "should update verification_status" do
    patch :update, id: @verification_status, verification_status: { title: @verification_status.title }
    assert_redirected_to verification_status_path(assigns(:verification_status))
  end

  test "should destroy verification_status" do
    assert_difference('VerificationStatus.count', -1) do
      delete :destroy, id: @verification_status
    end

    assert_redirected_to verification_statuses_path
  end
end
