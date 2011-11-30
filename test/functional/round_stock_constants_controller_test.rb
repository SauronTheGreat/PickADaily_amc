require 'test_helper'

class RoundStockConstantsControllerTest < ActionController::TestCase
  setup do
    @round_stock_constant = round_stock_constants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:round_stock_constants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round_stock_constant" do
    assert_difference('RoundStockConstant.count') do
      post :create, round_stock_constant: @round_stock_constant.attributes
    end

    assert_redirected_to round_stock_constant_path(assigns(:round_stock_constant))
  end

  test "should show round_stock_constant" do
    get :show, id: @round_stock_constant.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round_stock_constant.to_param
    assert_response :success
  end

  test "should update round_stock_constant" do
    put :update, id: @round_stock_constant.to_param, round_stock_constant: @round_stock_constant.attributes
    assert_redirected_to round_stock_constant_path(assigns(:round_stock_constant))
  end

  test "should destroy round_stock_constant" do
    assert_difference('RoundStockConstant.count', -1) do
      delete :destroy, id: @round_stock_constant.to_param
    end

    assert_redirected_to round_stock_constants_path
  end
end
