require 'test_helper'

class DebtPaperPricesControllerTest < ActionController::TestCase
  setup do
    @debt_paper_price = debt_paper_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debt_paper_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debt_paper_price" do
    assert_difference('DebtPaperPrice.count') do
      post :create, debt_paper_price: @debt_paper_price.attributes
    end

    assert_redirected_to debt_paper_price_path(assigns(:debt_paper_price))
  end

  test "should show debt_paper_price" do
    get :show, id: @debt_paper_price.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debt_paper_price.to_param
    assert_response :success
  end

  test "should update debt_paper_price" do
    put :update, id: @debt_paper_price.to_param, debt_paper_price: @debt_paper_price.attributes
    assert_redirected_to debt_paper_price_path(assigns(:debt_paper_price))
  end

  test "should destroy debt_paper_price" do
    assert_difference('DebtPaperPrice.count', -1) do
      delete :destroy, id: @debt_paper_price.to_param
    end

    assert_redirected_to debt_paper_prices_path
  end
end
