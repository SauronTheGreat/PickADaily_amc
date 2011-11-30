require 'test_helper'

class DebtPapersControllerTest < ActionController::TestCase
  setup do
    @debt_paper = debt_papers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:debt_papers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create debt_paper" do
    assert_difference('DebtPaper.count') do
      post :create, debt_paper: @debt_paper.attributes
    end

    assert_redirected_to debt_paper_path(assigns(:debt_paper))
  end

  test "should show debt_paper" do
    get :show, id: @debt_paper.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @debt_paper.to_param
    assert_response :success
  end

  test "should update debt_paper" do
    put :update, id: @debt_paper.to_param, debt_paper: @debt_paper.attributes
    assert_redirected_to debt_paper_path(assigns(:debt_paper))
  end

  test "should destroy debt_paper" do
    assert_difference('DebtPaper.count', -1) do
      delete :destroy, id: @debt_paper.to_param
    end

    assert_redirected_to debt_papers_path
  end
end
