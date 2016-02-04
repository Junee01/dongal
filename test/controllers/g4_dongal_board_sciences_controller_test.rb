require 'test_helper'

class G4DongalBoardSciencesControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_science = g4_dongal_board_sciences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_sciences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_science" do
    assert_difference('G4DongalBoardScience.count') do
      post :create, g4_dongal_board_science: { wr_created_on: @g4_dongal_board_science.wr_created_on, wr_link: @g4_dongal_board_science.wr_link, wr_title: @g4_dongal_board_science.wr_title, wr_writer: @g4_dongal_board_science.wr_writer }
    end

    assert_redirected_to g4_dongal_board_science_path(assigns(:g4_dongal_board_science))
  end

  test "should show g4_dongal_board_science" do
    get :show, id: @g4_dongal_board_science
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_science
    assert_response :success
  end

  test "should update g4_dongal_board_science" do
    patch :update, id: @g4_dongal_board_science, g4_dongal_board_science: { wr_created_on: @g4_dongal_board_science.wr_created_on, wr_link: @g4_dongal_board_science.wr_link, wr_title: @g4_dongal_board_science.wr_title, wr_writer: @g4_dongal_board_science.wr_writer }
    assert_redirected_to g4_dongal_board_science_path(assigns(:g4_dongal_board_science))
  end

  test "should destroy g4_dongal_board_science" do
    assert_difference('G4DongalBoardScience.count', -1) do
      delete :destroy, id: @g4_dongal_board_science
    end

    assert_redirected_to g4_dongal_board_sciences_path
  end
end
