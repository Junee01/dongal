require 'test_helper'

class G4DongalBoardLawsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_law = g4_dongal_board_laws(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_laws)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_law" do
    assert_difference('G4DongalBoardLaw.count') do
      post :create, g4_dongal_board_law: { wr_created_on: @g4_dongal_board_law.wr_created_on, wr_link: @g4_dongal_board_law.wr_link, wr_title: @g4_dongal_board_law.wr_title, wr_writer: @g4_dongal_board_law.wr_writer }
    end

    assert_redirected_to g4_dongal_board_law_path(assigns(:g4_dongal_board_law))
  end

  test "should show g4_dongal_board_law" do
    get :show, id: @g4_dongal_board_law
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_law
    assert_response :success
  end

  test "should update g4_dongal_board_law" do
    patch :update, id: @g4_dongal_board_law, g4_dongal_board_law: { wr_created_on: @g4_dongal_board_law.wr_created_on, wr_link: @g4_dongal_board_law.wr_link, wr_title: @g4_dongal_board_law.wr_title, wr_writer: @g4_dongal_board_law.wr_writer }
    assert_redirected_to g4_dongal_board_law_path(assigns(:g4_dongal_board_law))
  end

  test "should destroy g4_dongal_board_law" do
    assert_difference('G4DongalBoardLaw.count', -1) do
      delete :destroy, id: @g4_dongal_board_law
    end

    assert_redirected_to g4_dongal_board_laws_path
  end
end
