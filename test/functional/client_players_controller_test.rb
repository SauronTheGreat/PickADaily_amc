require 'test_helper'

class ClientPlayersControllerTest < ActionController::TestCase
  setup do
    @client_player = client_players(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_players)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_player" do
    assert_difference('ClientPlayer.count') do
      post :create, client_player: @client_player.attributes
    end

    assert_redirected_to client_player_path(assigns(:client_player))
  end

  test "should show client_player" do
    get :show, id: @client_player.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client_player.to_param
    assert_response :success
  end

  test "should update client_player" do
    put :update, id: @client_player.to_param, client_player: @client_player.attributes
    assert_redirected_to client_player_path(assigns(:client_player))
  end

  test "should destroy client_player" do
    assert_difference('ClientPlayer.count', -1) do
      delete :destroy, id: @client_player.to_param
    end

    assert_redirected_to client_players_path
  end
end
