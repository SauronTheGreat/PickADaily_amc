require 'test_helper'

class EconomicParameterSControllerTest < ActionController::TestCase
  setup do
    @economic_parameter_ = economic_parameter_s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:economic_parameter_s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create economic_parameter_" do
    assert_difference('EconomicParameter_.count') do
      post :create, economic_parameter_: @economic_parameter_.attributes
    end

    assert_redirected_to economic_parameter__path(assigns(:economic_parameter_))
  end

  test "should show economic_parameter_" do
    get :show, id: @economic_parameter_.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @economic_parameter_.to_param
    assert_response :success
  end

  test "should update economic_parameter_" do
    put :update, id: @economic_parameter_.to_param, economic_parameter_: @economic_parameter_.attributes
    assert_redirected_to economic_parameter__path(assigns(:economic_parameter_))
  end

  test "should destroy economic_parameter_" do
    assert_difference('EconomicParameter_.count', -1) do
      delete :destroy, id: @economic_parameter_.to_param
    end

    assert_redirected_to economic_parameter_s_path
  end
end
