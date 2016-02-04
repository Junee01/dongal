require 'test_helper'

class G4DongalBoardEngineersControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_engineer = g4_dongal_board_engineers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_engineers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_engineer" do
    assert_difference('G4DongalBoardEngineer.count') do
      post :create, g4_dongal_board_engineer: { wr_created_on: @g4_dongal_board_engineer.wr_created_on, wr_link: @g4_dongal_board_engineer.wr_link, wr_title: @g4_dongal_board_engineer.wr_title, wr_writer: @g4_dongal_board_engineer.wr_writer }
    end

    assert_redirected_to g4_dongal_board_engineer_path(assigns(:g4_dongal_board_engineer))
  end

  test "should show g4_dongal_board_engineer" do
    get :show, id: @g4_dongal_board_engineer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_engineer
    assert_response :success
  end

  test "should update g4_dongal_board_engineer" do
    patch :update, id: @g4_dongal_board_engineer, g4_dongal_board_engineer: { wr_created_on: @g4_dongal_board_engineer.wr_created_on, wr_link: @g4_dongal_board_engineer.wr_link, wr_title: @g4_dongal_board_engineer.wr_title, wr_writer: @g4_dongal_board_engineer.wr_writer }
    assert_redirected_to g4_dongal_board_engineer_path(assigns(:g4_dongal_board_engineer))
  end

  test "should destroy g4_dongal_board_engineer" do
    assert_difference('G4DongalBoardEngineer.count', -1) do
      delete :destroy, id: @g4_dongal_board_engineer
    end

    assert_redirected_to g4_dongal_board_engineers_path
  end
end
