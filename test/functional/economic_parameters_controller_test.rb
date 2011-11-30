require 'test_helper'

class EconomicParametersControllerTest < ActionController::TestCase
  setup do
    @economic_parameter = economic_parameters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economic_parameters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economic_parameter" do
    assert_difference('EconomicParameter.count') do
      post :create, economic_parameter: @economic_parameter.attributes
    end

    assert_redirected_to economic_parameter_path(assigns(:economic_parameter))
  end

  test "should show economic_parameter" do
    get :show, id: @economic_parameter.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economic_parameter.to_param
    assert_response :success
  end

  test "should update economic_parameter" do
    put :update, id: @economic_parameter.to_param, economic_parameter: @economic_parameter.attributes
    assert_redirected_to economic_parameter_path(assigns(:economic_parameter))
  end

  test "should destroy economic_parameter" do
    assert_difference('EconomicParameter.count', -1) do
      delete :destroy, id: @economic_parameter.to_param
    end

    assert_redirected_to economic_parameters_path
  end
end
