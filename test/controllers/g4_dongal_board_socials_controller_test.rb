require 'test_helper'

class G4DongalBoardSocialsControllerTest < ActionController::TestCase
  setup do
    @g4_dongal_board_social = g4_dongal_board_socials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:g4_dongal_board_socials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create g4_dongal_board_social" do
    assert_difference('G4DongalBoardSocial.count') do
      post :create, g4_dongal_board_social: { wr_created_on: @g4_dongal_board_social.wr_created_on, wr_link: @g4_dongal_board_social.wr_link, wr_title: @g4_dongal_board_social.wr_title, wr_writer: @g4_dongal_board_social.wr_writer }
    end

    assert_redirected_to g4_dongal_board_social_path(assigns(:g4_dongal_board_social))
  end

  test "should show g4_dongal_board_social" do
    get :show, id: @g4_dongal_board_social
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @g4_dongal_board_social
    assert_response :success
  end

  test "should update g4_dongal_board_social" do
    patch :update, id: @g4_dongal_board_social, g4_dongal_board_social: { wr_created_on: @g4_dongal_board_social.wr_created_on, wr_link: @g4_dongal_board_social.wr_link, wr_title: @g4_dongal_board_social.wr_title, wr_writer: @g4_dongal_board_social.wr_writer }
    assert_redirected_to g4_dongal_board_social_path(assigns(:g4_dongal_board_social))
  end

  test "should destroy g4_dongal_board_social" do
    assert_difference('G4DongalBoardSocial.count', -1) do
      delete :destroy, id: @g4_dongal_board_social
    end

    assert_redirected_to g4_dongal_board_socials_path
  end
end
