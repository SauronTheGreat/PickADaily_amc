require 'test_helper'

class PlayerAssessmentsControllerTest < ActionController::TestCase
  setup do
    @player_assessment = player_assessments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_assessments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_assessment" do
    assert_difference('PlayerAssessment.count') do
      post :create, player_assessment: @player_assessment.attributes
    end

    assert_redirected_to player_assessment_path(assigns(:player_assessment))
  end

  test "should show player_assessment" do
    get :show, id: @player_assessment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_assessment.to_param
    assert_response :success
  end

  test "should update player_assessment" do
    put :update, id: @player_assessment.to_param, player_assessment: @player_assessment.attributes
    assert_redirected_to player_assessment_path(assigns(:player_assessment))
  end

  test "should destroy player_assessment" do
    assert_difference('PlayerAssessment.count', -1) do
      delete :destroy, id: @player_assessment.to_param
    end

    assert_redirected_to player_assessments_path
  end
end
