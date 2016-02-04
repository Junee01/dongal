require 'test_helper'

class G4DongalBoardScholarsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_scholar = g4_dongal_board_scholars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_scholars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_scholar" do
    assert_difference('G4DongalBoardScholar.count') do
      post :create, g4_dongal_board_scholar: { wr_created_on: @g4_dongal_board_scholar.wr_created_on, wr_link: @g4_dongal_board_scholar.wr_link, wr_title: @g4_dongal_board_scholar.wr_title, wr_writer: @g4_dongal_board_scholar.wr_writer }
    end

    assert_redirected_to g4_dongal_board_scholar_path(assigns(:g4_dongal_board_scholar))
  end

  test "should show g4_dongal_board_scholar" do
    get :show, id: @g4_dongal_board_scholar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_scholar
    assert_response :success
  end

  test "should update g4_dongal_board_scholar" do
    patch :update, id: @g4_dongal_board_scholar, g4_dongal_board_scholar: { wr_created_on: @g4_dongal_board_scholar.wr_created_on, wr_link: @g4_dongal_board_scholar.wr_link, wr_title: @g4_dongal_board_scholar.wr_title, wr_writer: @g4_dongal_board_scholar.wr_writer }
    assert_redirected_to g4_dongal_board_scholar_path(assigns(:g4_dongal_board_scholar))
  end

  test "should destroy g4_dongal_board_scholar" do
    assert_difference('G4DongalBoardScholar.count', -1) do
      delete :destroy, id: @g4_dongal_board_scholar
    end

    assert_redirected_to g4_dongal_board_scholars_path
  end
end
