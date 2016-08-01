require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, student: { addr1: @student.addr1, addr2: @student.addr2, batch_id: @student.batch_id, blood: @student.blood, community: @student.community, dept_id: @student.dept_id, dob: @student.dob, dote: @student.dote, fathersname: @student.fathersname, fathersoccupiton: @student.fathersoccupiton, gender: @student.gender, guardian: @student.guardian, hoa: @student.hoa, hoal: @student.hoal, identification: @student.identification, mark: @student.mark, mobile: @student.mobile, name: @student.name, pmobile: @student.pmobile, regno: @student.regno, religionn: @student.religionn, sa: @student.sa, sal: @student.sal, ten: @student.ten, tenth: @student.tenth, twelth: @student.twelth, two: @student.two, user_id: @student.user_id }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, id: @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student
    assert_response :success
  end

  test "should update student" do
    patch :update, id: @student, student: { addr1: @student.addr1, addr2: @student.addr2, batch_id: @student.batch_id, blood: @student.blood, community: @student.community, dept_id: @student.dept_id, dob: @student.dob, dote: @student.dote, fathersname: @student.fathersname, fathersoccupiton: @student.fathersoccupiton, gender: @student.gender, guardian: @student.guardian, hoa: @student.hoa, hoal: @student.hoal, identification: @student.identification, mark: @student.mark, mobile: @student.mobile, name: @student.name, pmobile: @student.pmobile, regno: @student.regno, religionn: @student.religionn, sa: @student.sa, sal: @student.sal, ten: @student.ten, tenth: @student.tenth, twelth: @student.twelth, two: @student.two, user_id: @student.user_id }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, id: @student
    end

    assert_redirected_to students_path
  end
end
