require 'test_helper'

class G4DongalBoardNormalsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_normal = g4_dongal_board_normals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_normals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_normal" do
    assert_difference('G4DongalBoardNormal.count') do
      post :create, g4_dongal_board_normal: { wr_created_on: @g4_dongal_board_normal.wr_created_on, wr_link: @g4_dongal_board_normal.wr_link, wr_title: @g4_dongal_board_normal.wr_title, wr_writer: @g4_dongal_board_normal.wr_writer }
    end

    assert_redirected_to g4_dongal_board_normal_path(assigns(:g4_dongal_board_normal))
  end

  test "should show g4_dongal_board_normal" do
    get :show, id: @g4_dongal_board_normal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_normal
    assert_response :success
  end

  test "should update g4_dongal_board_normal" do
    patch :update, id: @g4_dongal_board_normal, g4_dongal_board_normal: { wr_created_on: @g4_dongal_board_normal.wr_created_on, wr_link: @g4_dongal_board_normal.wr_link, wr_title: @g4_dongal_board_normal.wr_title, wr_writer: @g4_dongal_board_normal.wr_writer }
    assert_redirected_to g4_dongal_board_normal_path(assigns(:g4_dongal_board_normal))
  end

  test "should destroy g4_dongal_board_normal" do
    assert_difference('G4DongalBoardNormal.count', -1) do
      delete :destroy, id: @g4_dongal_board_normal
    end

    assert_redirected_to g4_dongal_board_normals_path
  end
end
