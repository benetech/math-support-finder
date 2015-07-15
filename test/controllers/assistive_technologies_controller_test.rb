require 'test_helper'

class AssistiveTechnologiesControllerTest < ActionController::TestCase
  setup do
    @assistive_technology = assistive_technologies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistive_technologies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistive_technology" do
    assert_difference('AssistiveTechnology.count') do
      post :create, assistive_technology: { notes: @assistive_technology.notes, title: @assistive_technology.title }
    end

    assert_redirected_to assistive_technology_path(assigns(:assistive_technology))
  end

  test "should show assistive_technology" do
    get :show, id: @assistive_technology
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistive_technology
    assert_response :success
  end

  test "should update assistive_technology" do
    patch :update, id: @assistive_technology, assistive_technology: { notes: @assistive_technology.notes, title: @assistive_technology.title }
    assert_redirected_to assistive_technology_path(assigns(:assistive_technology))
  end

  test "should destroy assistive_technology" do
    assert_difference('AssistiveTechnology.count', -1) do
      delete :destroy, id: @assistive_technology
    end

    assert_redirected_to assistive_technologies_path
  end
end
