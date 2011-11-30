require 'test_helper'

class GoldPricesControllerTest < ActionController::TestCase
  setup do
    @gold_price = gold_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gold_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gold_price" do
    assert_difference('GoldPrice.count') do
      post :create, gold_price: @gold_price.attributes
    end

    assert_redirected_to gold_price_path(assigns(:gold_price))
  end

  test "should show gold_price" do
    get :show, id: @gold_price.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gold_price.to_param
    assert_response :success
  end

  test "should update gold_price" do
    put :update, id: @gold_price.to_param, gold_price: @gold_price.attributes
    assert_redirected_to gold_price_path(assigns(:gold_price))
  end

  test "should destroy gold_price" do
    assert_difference('GoldPrice.count', -1) do
      delete :destroy, id: @gold_price.to_param
    end

    assert_redirected_to gold_prices_path
  end
end
