require 'test_helper'

class SubjectmsControllerTest < ActionController::TestCase
  setup do
    @subjectm = subjectms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subjectms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subjectm" do
    assert_difference('Subjectm.count') do
      post :create, subjectm: { code: @subjectm.code, credit: @subjectm.credit, name: @subjectm.name, staff: @subjectm.staff }
    end

    assert_redirected_to subjectm_path(assigns(:subjectm))
  end

  test "should show subjectm" do
    get :show, id: @subjectm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subjectm
    assert_response :success
  end

  test "should update subjectm" do
    patch :update, id: @subjectm, subjectm: { code: @subjectm.code, credit: @subjectm.credit, name: @subjectm.name, staff: @subjectm.staff }
    assert_redirected_to subjectm_path(assigns(:subjectm))
  end

  test "should destroy subjectm" do
    assert_difference('Subjectm.count', -1) do
      delete :destroy, id: @subjectm
    end

    assert_redirected_to subjectms_path
  end
end
