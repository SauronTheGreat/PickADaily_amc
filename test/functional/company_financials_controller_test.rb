require 'test_helper'

class CompanyFinancialsControllerTest < ActionController::TestCase
  setup do
    @company_financial = company_financials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_financials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_financial" do
    assert_difference('CompanyFinancial.count') do
      post :create, company_financial: @company_financial.attributes
    end

    assert_redirected_to company_financial_path(assigns(:company_financial))
  end

  test "should show company_financial" do
    get :show, id: @company_financial.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_financial.to_param
    assert_response :success
  end

  test "should update company_financial" do
    put :update, id: @company_financial.to_param, company_financial: @company_financial.attributes
    assert_redirected_to company_financial_path(assigns(:company_financial))
  end

  test "should destroy company_financial" do
    assert_difference('CompanyFinancial.count', -1) do
      delete :destroy, id: @company_financial.to_param
    end

    assert_redirected_to company_financials_path
  end
end
