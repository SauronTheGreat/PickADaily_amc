require 'test_helper'

class PlayerTransactionsControllerTest < ActionController::TestCase
  setup do
    @player_transaction = player_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_transaction" do
    assert_difference('PlayerTransaction.count') do
      post :create, player_transaction: @player_transaction.attributes
    end

    assert_redirected_to player_transaction_path(assigns(:player_transaction))
  end

  test "should show player_transaction" do
    get :show, id: @player_transaction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_transaction.to_param
    assert_response :success
  end

  test "should update player_transaction" do
    put :update, id: @player_transaction.to_param, player_transaction: @player_transaction.attributes
    assert_redirected_to player_transaction_path(assigns(:player_transaction))
  end

  test "should destroy player_transaction" do
    assert_difference('PlayerTransaction.count', -1) do
      delete :destroy, id: @player_transaction.to_param
    end

    assert_redirected_to player_transactions_path
  end
end
