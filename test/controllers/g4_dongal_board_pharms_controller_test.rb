require 'test_helper'

class G4DongalBoardPharmsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_pharm = g4_dongal_board_pharms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_pharms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_pharm" do
    assert_difference('G4DongalBoardPharm.count') do
      post :create, g4_dongal_board_pharm: { wr_created_on: @g4_dongal_board_pharm.wr_created_on, wr_link: @g4_dongal_board_pharm.wr_link, wr_title: @g4_dongal_board_pharm.wr_title, wr_writer: @g4_dongal_board_pharm.wr_writer }
    end

    assert_redirected_to g4_dongal_board_pharm_path(assigns(:g4_dongal_board_pharm))
  end

  test "should show g4_dongal_board_pharm" do
    get :show, id: @g4_dongal_board_pharm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_pharm
    assert_response :success
  end

  test "should update g4_dongal_board_pharm" do
    patch :update, id: @g4_dongal_board_pharm, g4_dongal_board_pharm: { wr_created_on: @g4_dongal_board_pharm.wr_created_on, wr_link: @g4_dongal_board_pharm.wr_link, wr_title: @g4_dongal_board_pharm.wr_title, wr_writer: @g4_dongal_board_pharm.wr_writer }
    assert_redirected_to g4_dongal_board_pharm_path(assigns(:g4_dongal_board_pharm))
  end

  test "should destroy g4_dongal_board_pharm" do
    assert_difference('G4DongalBoardPharm.count', -1) do
      delete :destroy, id: @g4_dongal_board_pharm
    end

    assert_redirected_to g4_dongal_board_pharms_path
  end
end
