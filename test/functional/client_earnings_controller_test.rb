require 'test_helper'

class ClientEarningsControllerTest < ActionController::TestCase
  setup do
    @client_earning = client_earnings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_earnings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_earning" do
    assert_difference('ClientEarning.count') do
      post :create, client_earning: @client_earning.attributes
    end

    assert_redirected_to client_earning_path(assigns(:client_earning))
  end

  test "should show client_earning" do
    get :show, id: @client_earning.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_earning.to_param
    assert_response :success
  end

  test "should update client_earning" do
    put :update, id: @client_earning.to_param, client_earning: @client_earning.attributes
    assert_redirected_to client_earning_path(assigns(:client_earning))
  end

  test "should destroy client_earning" do
    assert_difference('ClientEarning.count', -1) do
      delete :destroy, id: @client_earning.to_param
    end

    assert_redirected_to client_earnings_path
  end
end
