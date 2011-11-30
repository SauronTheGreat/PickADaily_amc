require 'test_helper'

class NewsCompaniesControllerTest < ActionController::TestCase
  setup do
    @news_company = news_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_company" do
    assert_difference('NewsCompany.count') do
      post :create, news_company: @news_company.attributes
    end

    assert_redirected_to news_company_path(assigns(:news_company))
  end

  test "should show news_company" do
    get :show, id: @news_company.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_company.to_param
    assert_response :success
  end

  test "should update news_company" do
    put :update, id: @news_company.to_param, news_company: @news_company.attributes
    assert_redirected_to news_company_path(assigns(:news_company))
  end

  test "should destroy news_company" do
    assert_difference('NewsCompany.count', -1) do
      delete :destroy, id: @news_company.to_param
    end

    assert_redirected_to news_companies_path
  end
end
