require 'test_helper'

class PlayerFeeStructuresControllerTest < ActionController::TestCase
  setup do
    @player_fee_structure = player_fee_structures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_fee_structures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_fee_structure" do
    assert_difference('PlayerFeeStructure.count') do
      post :create, player_fee_structure: @player_fee_structure.attributes
    end

    assert_redirected_to player_fee_structure_path(assigns(:player_fee_structure))
  end

  test "should show player_fee_structure" do
    get :show, id: @player_fee_structure.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_fee_structure.to_param
    assert_response :success
  end

  test "should update player_fee_structure" do
    put :update, id: @player_fee_structure.to_param, player_fee_structure: @player_fee_structure.attributes
    assert_redirected_to player_fee_structure_path(assigns(:player_fee_structure))
  end

  test "should destroy player_fee_structure" do
    assert_difference('PlayerFeeStructure.count', -1) do
      delete :destroy, id: @player_fee_structure.to_param
    end

    assert_redirected_to player_fee_structures_path
  end
end
