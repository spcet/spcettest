require 'test_helper'

class AttendanceMastersControllerTest < ActionController::TestCase
  setup do
    @attendance_master = attendance_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendance_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendance_master" do
    assert_difference('AttendanceMaster.count') do
      post :create, attendance_master: { date: @attendance_master.date, semester_id: @attendance_master.semester_id, subject: @attendance_master.subject, today: @attendance_master.today, total: @attendance_master.total }
    end

    assert_redirected_to attendance_master_path(assigns(:attendance_master))
  end

  test "should show attendance_master" do
    get :show, id: @attendance_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendance_master
    assert_response :success
  end

  test "should update attendance_master" do
    patch :update, id: @attendance_master, attendance_master: { date: @attendance_master.date, semester_id: @attendance_master.semester_id, subject: @attendance_master.subject, today: @attendance_master.today, total: @attendance_master.total }
    assert_redirected_to attendance_master_path(assigns(:attendance_master))
  end

  test "should destroy attendance_master" do
    assert_difference('AttendanceMaster.count', -1) do
      delete :destroy, id: @attendance_master
    end

    assert_redirected_to attendance_masters_path
  end
end
