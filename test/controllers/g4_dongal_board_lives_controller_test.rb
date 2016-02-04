require 'test_helper'

class G4DongalBoardLivesControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_life = g4_dongal_board_lives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_lives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_life" do
    assert_difference('G4DongalBoardLife.count') do
      post :create, g4_dongal_board_life: { wr_created_on: @g4_dongal_board_life.wr_created_on, wr_link: @g4_dongal_board_life.wr_link, wr_title: @g4_dongal_board_life.wr_title, wr_writer: @g4_dongal_board_life.wr_writer }
    end

    assert_redirected_to g4_dongal_board_life_path(assigns(:g4_dongal_board_life))
  end

  test "should show g4_dongal_board_life" do
    get :show, id: @g4_dongal_board_life
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_life
    assert_response :success
  end

  test "should update g4_dongal_board_life" do
    patch :update, id: @g4_dongal_board_life, g4_dongal_board_life: { wr_created_on: @g4_dongal_board_life.wr_created_on, wr_link: @g4_dongal_board_life.wr_link, wr_title: @g4_dongal_board_life.wr_title, wr_writer: @g4_dongal_board_life.wr_writer }
    assert_redirected_to g4_dongal_board_life_path(assigns(:g4_dongal_board_life))
  end

  test "should destroy g4_dongal_board_life" do
    assert_difference('G4DongalBoardLife.count', -1) do
      delete :destroy, id: @g4_dongal_board_life
    end

    assert_redirected_to g4_dongal_board_lives_path
  end
end
