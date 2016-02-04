require 'test_helper'

class G4DongalBoardEntrancesControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_entrance = g4_dongal_board_entrances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_entrances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_entrance" do
    assert_difference('G4DongalBoardEntrance.count') do
      post :create, g4_dongal_board_entrance: { wr_created_on: @g4_dongal_board_entrance.wr_created_on, wr_link: @g4_dongal_board_entrance.wr_link, wr_title: @g4_dongal_board_entrance.wr_title, wr_writer: @g4_dongal_board_entrance.wr_writer }
    end

    assert_redirected_to g4_dongal_board_entrance_path(assigns(:g4_dongal_board_entrance))
  end

  test "should show g4_dongal_board_entrance" do
    get :show, id: @g4_dongal_board_entrance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_entrance
    assert_response :success
  end

  test "should update g4_dongal_board_entrance" do
    patch :update, id: @g4_dongal_board_entrance, g4_dongal_board_entrance: { wr_created_on: @g4_dongal_board_entrance.wr_created_on, wr_link: @g4_dongal_board_entrance.wr_link, wr_title: @g4_dongal_board_entrance.wr_title, wr_writer: @g4_dongal_board_entrance.wr_writer }
    assert_redirected_to g4_dongal_board_entrance_path(assigns(:g4_dongal_board_entrance))
  end

  test "should destroy g4_dongal_board_entrance" do
    assert_difference('G4DongalBoardEntrance.count', -1) do
      delete :destroy, id: @g4_dongal_board_entrance
    end

    assert_redirected_to g4_dongal_board_entrances_path
  end
end
