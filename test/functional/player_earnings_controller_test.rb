require 'test_helper'

class PlayerEarningsControllerTest < ActionController::TestCase
  setup do
    @player_earning = player_earnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_earnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_earning" do
    assert_difference('PlayerEarning.count') do
      post :create, player_earning: @player_earning.attributes
    end

    assert_redirected_to player_earning_path(assigns(:player_earning))
  end

  test "should show player_earning" do
    get :show, id: @player_earning.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_earning.to_param
    assert_response :success
  end

  test "should update player_earning" do
    put :update, id: @player_earning.to_param, player_earning: @player_earning.attributes
    assert_redirected_to player_earning_path(assigns(:player_earning))
  end

  test "should destroy player_earning" do
    assert_difference('PlayerEarning.count', -1) do
      delete :destroy, id: @player_earning.to_param
    end

    assert_redirected_to player_earnings_path
  end
end
