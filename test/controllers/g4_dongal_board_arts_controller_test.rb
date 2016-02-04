require 'test_helper'

class G4DongalBoardArtsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_art = g4_dongal_board_arts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_arts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_art" do
    assert_difference('G4DongalBoardArt.count') do
      post :create, g4_dongal_board_art: { wr_created_on: @g4_dongal_board_art.wr_created_on, wr_link: @g4_dongal_board_art.wr_link, wr_title: @g4_dongal_board_art.wr_title, wr_writer: @g4_dongal_board_art.wr_writer }
    end

    assert_redirected_to g4_dongal_board_art_path(assigns(:g4_dongal_board_art))
  end

  test "should show g4_dongal_board_art" do
    get :show, id: @g4_dongal_board_art
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_art
    assert_response :success
  end

  test "should update g4_dongal_board_art" do
    patch :update, id: @g4_dongal_board_art, g4_dongal_board_art: { wr_created_on: @g4_dongal_board_art.wr_created_on, wr_link: @g4_dongal_board_art.wr_link, wr_title: @g4_dongal_board_art.wr_title, wr_writer: @g4_dongal_board_art.wr_writer }
    assert_redirected_to g4_dongal_board_art_path(assigns(:g4_dongal_board_art))
  end

  test "should destroy g4_dongal_board_art" do
    assert_difference('G4DongalBoardArt.count', -1) do
      delete :destroy, id: @g4_dongal_board_art
    end

    assert_redirected_to g4_dongal_board_arts_path
  end
end
