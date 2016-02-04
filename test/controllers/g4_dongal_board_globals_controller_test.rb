require 'test_helper'

class G4DongalBoardGlobalsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_global = g4_dongal_board_globals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_globals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_global" do
    assert_difference('G4DongalBoardGlobal.count') do
      post :create, g4_dongal_board_global: { wr_created_on: @g4_dongal_board_global.wr_created_on, wr_link: @g4_dongal_board_global.wr_link, wr_title: @g4_dongal_board_global.wr_title, wr_writer: @g4_dongal_board_global.wr_writer }
    end

    assert_redirected_to g4_dongal_board_global_path(assigns(:g4_dongal_board_global))
  end

  test "should show g4_dongal_board_global" do
    get :show, id: @g4_dongal_board_global
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_global
    assert_response :success
  end

  test "should update g4_dongal_board_global" do
    patch :update, id: @g4_dongal_board_global, g4_dongal_board_global: { wr_created_on: @g4_dongal_board_global.wr_created_on, wr_link: @g4_dongal_board_global.wr_link, wr_title: @g4_dongal_board_global.wr_title, wr_writer: @g4_dongal_board_global.wr_writer }
    assert_redirected_to g4_dongal_board_global_path(assigns(:g4_dongal_board_global))
  end

  test "should destroy g4_dongal_board_global" do
    assert_difference('G4DongalBoardGlobal.count', -1) do
      delete :destroy, id: @g4_dongal_board_global
    end

    assert_redirected_to g4_dongal_board_globals_path
  end
end
