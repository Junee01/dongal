require 'test_helper'

class DongalNoticesControllerTest < ActionController::TestCase
  setup do
    @dongal_notice = dongal_notices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dongal_notices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dongal_notice" do
    assert_difference('DongalNotice.count') do
      post :create, dongal_notice: { bo_table: @dongal_notice.bo_table, check: @dongal_notice.check, update_time: @dongal_notice.update_time, wr_id: @dongal_notice.wr_id }
    end

    assert_redirected_to dongal_notice_path(assigns(:dongal_notice))
  end

  test "should show dongal_notice" do
    get :show, id: @dongal_notice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dongal_notice
    assert_response :success
  end

  test "should update dongal_notice" do
    patch :update, id: @dongal_notice, dongal_notice: { bo_table: @dongal_notice.bo_table, check: @dongal_notice.check, update_time: @dongal_notice.update_time, wr_id: @dongal_notice.wr_id }
    assert_redirected_to dongal_notice_path(assigns(:dongal_notice))
  end

  test "should destroy dongal_notice" do
    assert_difference('DongalNotice.count', -1) do
      delete :destroy, id: @dongal_notice
    end

    assert_redirected_to dongal_notices_path
  end
end
