require 'test_helper'

class WorkflowStatusesControllerTest < ActionController::TestCase
  setup do
    @workflow_status = workflow_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workflow_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workflow_status" do
    assert_difference('WorkflowStatus.count') do
      post :create, workflow_status: { title: @workflow_status.title }
    end

    assert_redirected_to workflow_status_path(assigns(:workflow_status))
  end

  test "should show workflow_status" do
    get :show, id: @workflow_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workflow_status
    assert_response :success
  end

  test "should update workflow_status" do
    patch :update, id: @workflow_status, workflow_status: { title: @workflow_status.title }
    assert_redirected_to workflow_status_path(assigns(:workflow_status))
  end

  test "should destroy workflow_status" do
    assert_difference('WorkflowStatus.count', -1) do
      delete :destroy, id: @workflow_status
    end

    assert_redirected_to workflow_statuses_path
  end
end
