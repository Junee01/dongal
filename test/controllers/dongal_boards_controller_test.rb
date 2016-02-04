require 'test_helper'

class DongalBoardsControllerTest < ActionController::TestCase
  setup do
    @dongal_board = dongal_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dongal_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dongal_board" do
    assert_difference('DongalBoard.count') do
      post :create, dongal_board: { board_color: @dongal_board.board_color, board_name: @dongal_board.board_name, board_title: @dongal_board.board_title }
    end

    assert_redirected_to dongal_board_path(assigns(:dongal_board))
  end

  test "should show dongal_board" do
    get :show, id: @dongal_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dongal_board
    assert_response :success
  end

  test "should update dongal_board" do
    patch :update, id: @dongal_board, dongal_board: { board_color: @dongal_board.board_color, board_name: @dongal_board.board_name, board_title: @dongal_board.board_title }
    assert_redirected_to dongal_board_path(assigns(:dongal_board))
  end

  test "should destroy dongal_board" do
    assert_difference('DongalBoard.count', -1) do
      delete :destroy, id: @dongal_board
    end

    assert_redirected_to dongal_boards_path
  end
end
