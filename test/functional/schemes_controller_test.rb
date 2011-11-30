require 'test_helper'

class SchemesControllerTest < ActionController::TestCase
  setup do
    @scheme = schemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:schemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scheme" do
    assert_difference('Scheme.count') do
      post :create, scheme: @scheme.attributes
    end

    assert_redirected_to scheme_path(assigns(:scheme))
  end

  test "should show scheme" do
    get :show, id: @scheme.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scheme.to_param
    assert_response :success
  end

  test "should update scheme" do
    put :update, id: @scheme.to_param, scheme: @scheme.attributes
    assert_redirected_to scheme_path(assigns(:scheme))
  end

  test "should destroy scheme" do
    assert_difference('Scheme.count', -1) do
      delete :destroy, id: @scheme.to_param
    end

    assert_redirected_to schemes_path
  end
end
