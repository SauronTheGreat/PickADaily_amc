require 'test_helper'

class PlayerPromisesControllerTest < ActionController::TestCase
  setup do
    @player_promise = player_promises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_promises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_promise" do
    assert_difference('PlayerPromise.count') do
      post :create, player_promise: @player_promise.attributes
    end

    assert_redirected_to player_promise_path(assigns(:player_promise))
  end

  test "should show player_promise" do
    get :show, id: @player_promise.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_promise.to_param
    assert_response :success
  end

  test "should update player_promise" do
    put :update, id: @player_promise.to_param, player_promise: @player_promise.attributes
    assert_redirected_to player_promise_path(assigns(:player_promise))
  end

  test "should destroy player_promise" do
    assert_difference('PlayerPromise.count', -1) do
      delete :destroy, id: @player_promise.to_param
    end

    assert_redirected_to player_promises_path
  end
end
