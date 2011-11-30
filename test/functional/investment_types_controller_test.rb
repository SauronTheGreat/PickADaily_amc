require 'test_helper'

class InvestmentTypesControllerTest < ActionController::TestCase
  setup do
    @investment_type = investment_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investment_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investment_type" do
    assert_difference('InvestmentType.count') do
      post :create, investment_type: @investment_type.attributes
    end

    assert_redirected_to investment_type_path(assigns(:investment_type))
  end

  test "should show investment_type" do
    get :show, id: @investment_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investment_type.to_param
    assert_response :success
  end

  test "should update investment_type" do
    put :update, id: @investment_type.to_param, investment_type: @investment_type.attributes
    assert_redirected_to investment_type_path(assigns(:investment_type))
  end

  test "should destroy investment_type" do
    assert_difference('InvestmentType.count', -1) do
      delete :destroy, id: @investment_type.to_param
    end

    assert_redirected_to investment_types_path
  end
end
