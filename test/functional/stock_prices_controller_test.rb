require 'test_helper'

class StockPricesControllerTest < ActionController::TestCase
  setup do
    @stock_price = stock_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_price" do
    assert_difference('StockPrice.count') do
      post :create, stock_price: @stock_price.attributes
    end

    assert_redirected_to stock_price_path(assigns(:stock_price))
  end

  test "should show stock_price" do
    get :show, id: @stock_price.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_price.to_param
    assert_response :success
  end

  test "should update stock_price" do
    put :update, id: @stock_price.to_param, stock_price: @stock_price.attributes
    assert_redirected_to stock_price_path(assigns(:stock_price))
  end

  test "should destroy stock_price" do
    assert_difference('StockPrice.count', -1) do
      delete :destroy, id: @stock_price.to_param
    end

    assert_redirected_to stock_prices_path
  end
end
