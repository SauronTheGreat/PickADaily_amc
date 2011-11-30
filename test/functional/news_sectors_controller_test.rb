require 'test_helper'

class NewsSectorsControllerTest < ActionController::TestCase
  setup do
    @news_sector = news_sectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:news_sectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create news_sector" do
    assert_difference('NewsSector.count') do
      post :create, news_sector: @news_sector.attributes
    end

    assert_redirected_to news_sector_path(assigns(:news_sector))
  end

  test "should show news_sector" do
    get :show, id: @news_sector.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_sector.to_param
    assert_response :success
  end

  test "should update news_sector" do
    put :update, id: @news_sector.to_param, news_sector: @news_sector.attributes
    assert_redirected_to news_sector_path(assigns(:news_sector))
  end

  test "should destroy news_sector" do
    assert_difference('NewsSector.count', -1) do
      delete :destroy, id: @news_sector.to_param
    end

    assert_redirected_to news_sectors_path
  end
end
