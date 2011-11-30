require 'test_helper'

class PlayerClientsControllerTest < ActionController::TestCase
  setup do
    @player_client = player_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:player_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create player_client" do
    assert_difference('PlayerClient.count') do
      post :create, player_client: @player_client.attributes
    end

    assert_redirected_to player_client_path(assigns(:player_client))
  end

  test "should show player_client" do
    get :show, id: @player_client.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @player_client.to_param
    assert_response :success
  end

  test "should update player_client" do
    put :update, id: @player_client.to_param, player_client: @player_client.attributes
    assert_redirected_to player_client_path(assigns(:player_client))
  end

  test "should destroy player_client" do
    assert_difference('PlayerClient.count', -1) do
      delete :destroy, id: @player_client.to_param
    end

    assert_redirected_to player_clients_path
  end
end
