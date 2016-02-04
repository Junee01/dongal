require 'test_helper'

class G4DongalBoardStudiesControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_study = g4_dongal_board_studies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_studies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_study" do
    assert_difference('G4DongalBoardStudy.count') do
      post :create, g4_dongal_board_study: { wr_created_on: @g4_dongal_board_study.wr_created_on, wr_link: @g4_dongal_board_study.wr_link, wr_title: @g4_dongal_board_study.wr_title, wr_writer: @g4_dongal_board_study.wr_writer }
    end

    assert_redirected_to g4_dongal_board_study_path(assigns(:g4_dongal_board_study))
  end

  test "should show g4_dongal_board_study" do
    get :show, id: @g4_dongal_board_study
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_study
    assert_response :success
  end

  test "should update g4_dongal_board_study" do
    patch :update, id: @g4_dongal_board_study, g4_dongal_board_study: { wr_created_on: @g4_dongal_board_study.wr_created_on, wr_link: @g4_dongal_board_study.wr_link, wr_title: @g4_dongal_board_study.wr_title, wr_writer: @g4_dongal_board_study.wr_writer }
    assert_redirected_to g4_dongal_board_study_path(assigns(:g4_dongal_board_study))
  end

  test "should destroy g4_dongal_board_study" do
    assert_difference('G4DongalBoardStudy.count', -1) do
      delete :destroy, id: @g4_dongal_board_study
    end

    assert_redirected_to g4_dongal_board_studies_path
  end
end
