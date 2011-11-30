require 'test_helper'

class ClientTransactionsControllerTest < ActionController::TestCase
  setup do
    @client_transaction = client_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_transaction" do
    assert_difference('ClientTransaction.count') do
      post :create, client_transaction: @client_transaction.attributes
    end

    assert_redirected_to client_transaction_path(assigns(:client_transaction))
  end

  test "should show client_transaction" do
    get :show, id: @client_transaction.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_transaction.to_param
    assert_response :success
  end

  test "should update client_transaction" do
    put :update, id: @client_transaction.to_param, client_transaction: @client_transaction.attributes
    assert_redirected_to client_transaction_path(assigns(:client_transaction))
  end

  test "should destroy client_transaction" do
    assert_difference('ClientTransaction.count', -1) do
      delete :destroy, id: @client_transaction.to_param
    end

    assert_redirected_to client_transactions_path
  end
end
