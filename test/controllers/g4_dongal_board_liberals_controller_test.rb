require 'test_helper'

class G4DongalBoardLiberalsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_liberal = g4_dongal_board_liberals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_liberals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_liberal" do
    assert_difference('G4DongalBoardLiberal.count') do
      post :create, g4_dongal_board_liberal: { wr_created_on: @g4_dongal_board_liberal.wr_created_on, wr_link: @g4_dongal_board_liberal.wr_link, wr_title: @g4_dongal_board_liberal.wr_title, wr_writer: @g4_dongal_board_liberal.wr_writer }
    end

    assert_redirected_to g4_dongal_board_liberal_path(assigns(:g4_dongal_board_liberal))
  end

  test "should show g4_dongal_board_liberal" do
    get :show, id: @g4_dongal_board_liberal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_liberal
    assert_response :success
  end

  test "should update g4_dongal_board_liberal" do
    patch :update, id: @g4_dongal_board_liberal, g4_dongal_board_liberal: { wr_created_on: @g4_dongal_board_liberal.wr_created_on, wr_link: @g4_dongal_board_liberal.wr_link, wr_title: @g4_dongal_board_liberal.wr_title, wr_writer: @g4_dongal_board_liberal.wr_writer }
    assert_redirected_to g4_dongal_board_liberal_path(assigns(:g4_dongal_board_liberal))
  end

  test "should destroy g4_dongal_board_liberal" do
    assert_difference('G4DongalBoardLiberal.count', -1) do
      delete :destroy, id: @g4_dongal_board_liberal
    end

    assert_redirected_to g4_dongal_board_liberals_path
  end
end
