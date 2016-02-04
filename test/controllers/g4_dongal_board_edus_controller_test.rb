require 'test_helper'

class G4DongalBoardEdusControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_edu = g4_dongal_board_edus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_edus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_edu" do
    assert_difference('G4DongalBoardEdu.count') do
      post :create, g4_dongal_board_edu: { wr_created_on: @g4_dongal_board_edu.wr_created_on, wr_link: @g4_dongal_board_edu.wr_link, wr_title: @g4_dongal_board_edu.wr_title, wr_writer: @g4_dongal_board_edu.wr_writer }
    end

    assert_redirected_to g4_dongal_board_edu_path(assigns(:g4_dongal_board_edu))
  end

  test "should show g4_dongal_board_edu" do
    get :show, id: @g4_dongal_board_edu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_edu
    assert_response :success
  end

  test "should update g4_dongal_board_edu" do
    patch :update, id: @g4_dongal_board_edu, g4_dongal_board_edu: { wr_created_on: @g4_dongal_board_edu.wr_created_on, wr_link: @g4_dongal_board_edu.wr_link, wr_title: @g4_dongal_board_edu.wr_title, wr_writer: @g4_dongal_board_edu.wr_writer }
    assert_redirected_to g4_dongal_board_edu_path(assigns(:g4_dongal_board_edu))
  end

  test "should destroy g4_dongal_board_edu" do
    assert_difference('G4DongalBoardEdu.count', -1) do
      delete :destroy, id: @g4_dongal_board_edu
    end

    assert_redirected_to g4_dongal_board_edus_path
  end
end
