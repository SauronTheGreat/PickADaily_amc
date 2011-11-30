require 'test_helper'

class PortfolioAllocationsControllerTest < ActionController::TestCase
  setup do
    @portfolio_allocation = portfolio_allocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portfolio_allocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portfolio_allocation" do
    assert_difference('PortfolioAllocation.count') do
      post :create, portfolio_allocation: @portfolio_allocation.attributes
    end

    assert_redirected_to portfolio_allocation_path(assigns(:portfolio_allocation))
  end

  test "should show portfolio_allocation" do
    get :show, id: @portfolio_allocation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portfolio_allocation.to_param
    assert_response :success
  end

  test "should update portfolio_allocation" do
    put :update, id: @portfolio_allocation.to_param, portfolio_allocation: @portfolio_allocation.attributes
    assert_redirected_to portfolio_allocation_path(assigns(:portfolio_allocation))
  end

  test "should destroy portfolio_allocation" do
    assert_difference('PortfolioAllocation.count', -1) do
      delete :destroy, id: @portfolio_allocation.to_param
    end

    assert_redirected_to portfolio_allocations_path
  end
end
