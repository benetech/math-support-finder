require 'test_helper'

class AssistiveTechnologyVersionsControllerTest < ActionController::TestCase
  setup do
    @assistive_technology_version = assistive_technology_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistive_technology_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistive_technology_version" do
    assert_difference('AssistiveTechnologyVersion.count') do
      post :create, assistive_technology_version: { assistive_technology_id: @assistive_technology_version.assistive_technology_id, notes: @assistive_technology_version.notes, version: @assistive_technology_version.version }
    end

    assert_redirected_to assistive_technology_version_path(assigns(:assistive_technology_version))
  end

  test "should show assistive_technology_version" do
    get :show, id: @assistive_technology_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistive_technology_version
    assert_response :success
  end

  test "should update assistive_technology_version" do
    patch :update, id: @assistive_technology_version, assistive_technology_version: { assistive_technology_id: @assistive_technology_version.assistive_technology_id, notes: @assistive_technology_version.notes, version: @assistive_technology_version.version }
    assert_redirected_to assistive_technology_version_path(assigns(:assistive_technology_version))
  end

  test "should destroy assistive_technology_version" do
    assert_difference('AssistiveTechnologyVersion.count', -1) do
      delete :destroy, id: @assistive_technology_version
    end

    assert_redirected_to assistive_technology_versions_path
  end
end
