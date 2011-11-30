require 'test_helper'

class RoundNewsControllerTest < ActionController::TestCase
  setup do
    @round_news = round_news(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:round_news)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create round_news" do
    assert_difference('RoundNews.count') do
      post :create, round_news: @round_news.attributes
    end

    assert_redirected_to round_news_path(assigns(:round_news))
  end

  test "should show round_news" do
    get :show, id: @round_news.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @round_news.to_param
    assert_response :success
  end

  test "should update round_news" do
    put :update, id: @round_news.to_param, round_news: @round_news.attributes
    assert_redirected_to round_news_path(assigns(:round_news))
  end

  test "should destroy round_news" do
    assert_difference('RoundNews.count', -1) do
      delete :destroy, id: @round_news.to_param
    end

    assert_redirected_to round_news_index_path
  end
end
