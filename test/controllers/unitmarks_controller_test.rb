require 'test_helper'

class UnitmarksControllerTest < ActionController::TestCase
  setup do
    @unitmark = unitmarks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unitmarks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unitmark" do
    assert_difference('Unitmark.count') do
      post :create, unitmark: { mark: @unitmark.mark, student_id: @unitmark.student_id, subject_id: @unitmark.subject_id, unit_id: @unitmark.unit_id }
    end

    assert_redirected_to unitmark_path(assigns(:unitmark))
  end

  test "should show unitmark" do
    get :show, id: @unitmark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unitmark
    assert_response :success
  end

  test "should update unitmark" do
    patch :update, id: @unitmark, unitmark: { mark: @unitmark.mark, student_id: @unitmark.student_id, subject_id: @unitmark.subject_id, unit_id: @unitmark.unit_id }
    assert_redirected_to unitmark_path(assigns(:unitmark))
  end

  test "should destroy unitmark" do
    assert_difference('Unitmark.count', -1) do
      delete :destroy, id: @unitmark
    end

    assert_redirected_to unitmarks_path
  end
end
