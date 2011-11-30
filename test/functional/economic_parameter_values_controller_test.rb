require 'test_helper'

class EconomicParameterValuesControllerTest < ActionController::TestCase
  setup do
    @economic_parameter_value = economic_parameter_values(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economic_parameter_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economic_parameter_value" do
    assert_difference('EconomicParameterValue.count') do
      post :create, economic_parameter_value: @economic_parameter_value.attributes
    end

    assert_redirected_to economic_parameter_value_path(assigns(:economic_parameter_value))
  end

  test "should show economic_parameter_value" do
    get :show, id: @economic_parameter_value.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economic_parameter_value.to_param
    assert_response :success
  end

  test "should update economic_parameter_value" do
    put :update, id: @economic_parameter_value.to_param, economic_parameter_value: @economic_parameter_value.attributes
    assert_redirected_to economic_parameter_value_path(assigns(:economic_parameter_value))
  end

  test "should destroy economic_parameter_value" do
    assert_difference('EconomicParameterValue.count', -1) do
      delete :destroy, id: @economic_parameter_value.to_param
    end

    assert_redirected_to economic_parameter_values_path
  end
end
