require 'test_helper'

class SchemePricesControllerTest < ActionController::TestCase
  setup do
    @scheme_price = scheme_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scheme_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scheme_price" do
    assert_difference('SchemePrice.count') do
      post :create, scheme_price: @scheme_price.attributes
    end

    assert_redirected_to scheme_price_path(assigns(:scheme_price))
  end

  test "should show scheme_price" do
    get :show, id: @scheme_price.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scheme_price.to_param
    assert_response :success
  end

  test "should update scheme_price" do
    put :update, id: @scheme_price.to_param, scheme_price: @scheme_price.attributes
    assert_redirected_to scheme_price_path(assigns(:scheme_price))
  end

  test "should destroy scheme_price" do
    assert_difference('SchemePrice.count', -1) do
      delete :destroy, id: @scheme_price.to_param
    end

    assert_redirected_to scheme_prices_path
  end
end
