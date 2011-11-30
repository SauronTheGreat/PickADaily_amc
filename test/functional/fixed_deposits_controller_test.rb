require 'test_helper'

class FixedDepositsControllerTest < ActionController::TestCase
  setup do
    @fixed_deposit = fixed_deposits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fixed_deposits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fixed_deposit" do
    assert_difference('FixedDeposit.count') do
      post :create, fixed_deposit: @fixed_deposit.attributes
    end

    assert_redirected_to fixed_deposit_path(assigns(:fixed_deposit))
  end

  test "should show fixed_deposit" do
    get :show, id: @fixed_deposit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fixed_deposit.to_param
    assert_response :success
  end

  test "should update fixed_deposit" do
    put :update, id: @fixed_deposit.to_param, fixed_deposit: @fixed_deposit.attributes
    assert_redirected_to fixed_deposit_path(assigns(:fixed_deposit))
  end

  test "should destroy fixed_deposit" do
    assert_difference('FixedDeposit.count', -1) do
      delete :destroy, id: @fixed_deposit.to_param
    end

    assert_redirected_to fixed_deposits_path
  end
end
