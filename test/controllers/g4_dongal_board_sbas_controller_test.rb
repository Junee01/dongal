require 'test_helper'

class G4DongalBoardSbasControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_sba = g4_dongal_board_sbas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_sbas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_sba" do
    assert_difference('G4DongalBoardSba.count') do
      post :create, g4_dongal_board_sba: { wr_created_on: @g4_dongal_board_sba.wr_created_on, wr_link: @g4_dongal_board_sba.wr_link, wr_title: @g4_dongal_board_sba.wr_title, wr_writer: @g4_dongal_board_sba.wr_writer }
    end

    assert_redirected_to g4_dongal_board_sba_path(assigns(:g4_dongal_board_sba))
  end

  test "should show g4_dongal_board_sba" do
    get :show, id: @g4_dongal_board_sba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_sba
    assert_response :success
  end

  test "should update g4_dongal_board_sba" do
    patch :update, id: @g4_dongal_board_sba, g4_dongal_board_sba: { wr_created_on: @g4_dongal_board_sba.wr_created_on, wr_link: @g4_dongal_board_sba.wr_link, wr_title: @g4_dongal_board_sba.wr_title, wr_writer: @g4_dongal_board_sba.wr_writer }
    assert_redirected_to g4_dongal_board_sba_path(assigns(:g4_dongal_board_sba))
  end

  test "should destroy g4_dongal_board_sba" do
    assert_difference('G4DongalBoardSba.count', -1) do
      delete :destroy, id: @g4_dongal_board_sba
    end

    assert_redirected_to g4_dongal_board_sbas_path
  end
end
