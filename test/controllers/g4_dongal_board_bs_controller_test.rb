require 'test_helper'

class G4DongalBoardBsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_b = g4_dongal_board_bs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_bs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_b" do
    assert_difference('G4DongalBoardB.count') do
      post :create, g4_dongal_board_b: { wr_created_on: @g4_dongal_board_b.wr_created_on, wr_link: @g4_dongal_board_b.wr_link, wr_title: @g4_dongal_board_b.wr_title, wr_writer: @g4_dongal_board_b.wr_writer }
    end

    assert_redirected_to g4_dongal_board_b_path(assigns(:g4_dongal_board_b))
  end

  test "should show g4_dongal_board_b" do
    get :show, id: @g4_dongal_board_b
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_b
    assert_response :success
  end

  test "should update g4_dongal_board_b" do
    patch :update, id: @g4_dongal_board_b, g4_dongal_board_b: { wr_created_on: @g4_dongal_board_b.wr_created_on, wr_link: @g4_dongal_board_b.wr_link, wr_title: @g4_dongal_board_b.wr_title, wr_writer: @g4_dongal_board_b.wr_writer }
    assert_redirected_to g4_dongal_board_b_path(assigns(:g4_dongal_board_b))
  end

  test "should destroy g4_dongal_board_b" do
    assert_difference('G4DongalBoardB.count', -1) do
      delete :destroy, id: @g4_dongal_board_b
    end

    assert_redirected_to g4_dongal_board_bs_path
  end
end
