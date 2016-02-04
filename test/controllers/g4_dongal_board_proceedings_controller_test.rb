require 'test_helper'

class G4DongalBoardProceedingsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_proceeding = g4_dongal_board_proceedings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_proceedings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_proceeding" do
    assert_difference('G4DongalBoardProceeding.count') do
      post :create, g4_dongal_board_proceeding: { wr_created_on: @g4_dongal_board_proceeding.wr_created_on, wr_link: @g4_dongal_board_proceeding.wr_link, wr_title: @g4_dongal_board_proceeding.wr_title, wr_writer: @g4_dongal_board_proceeding.wr_writer }
    end

    assert_redirected_to g4_dongal_board_proceeding_path(assigns(:g4_dongal_board_proceeding))
  end

  test "should show g4_dongal_board_proceeding" do
    get :show, id: @g4_dongal_board_proceeding
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_proceeding
    assert_response :success
  end

  test "should update g4_dongal_board_proceeding" do
    patch :update, id: @g4_dongal_board_proceeding, g4_dongal_board_proceeding: { wr_created_on: @g4_dongal_board_proceeding.wr_created_on, wr_link: @g4_dongal_board_proceeding.wr_link, wr_title: @g4_dongal_board_proceeding.wr_title, wr_writer: @g4_dongal_board_proceeding.wr_writer }
    assert_redirected_to g4_dongal_board_proceeding_path(assigns(:g4_dongal_board_proceeding))
  end

  test "should destroy g4_dongal_board_proceeding" do
    assert_difference('G4DongalBoardProceeding.count', -1) do
      delete :destroy, id: @g4_dongal_board_proceeding
    end

    assert_redirected_to g4_dongal_board_proceedings_path
  end
end
