require 'test_helper'

class AffordancesControllerTest < ActionController::TestCase
  setup do
    @affordance = affordances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:affordances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create affordance" do
    assert_difference('Affordance.count') do
      post :create, affordance: { details: @affordance.details, matrix_entry_id: @affordance.matrix_entry_id, type: @affordance.type, verified: @affordance.verified }
    end

    assert_redirected_to affordance_path(assigns(:affordance))
  end

  test "should show affordance" do
    get :show, id: @affordance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @affordance
    assert_response :success
  end

  test "should update affordance" do
    patch :update, id: @affordance, affordance: { details: @affordance.details, matrix_entry_id: @affordance.matrix_entry_id, type: @affordance.type, verified: @affordance.verified }
    assert_redirected_to affordance_path(assigns(:affordance))
  end

  test "should destroy affordance" do
    assert_difference('Affordance.count', -1) do
      delete :destroy, id: @affordance
    end

    assert_redirected_to affordances_path
  end
end
