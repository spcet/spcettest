require 'test_helper'

class SpcetControllerTest < ActionController::TestCase
  test "should get attendance" do
    get :attendance
    assert_response :success
  end

  test "should get calattend" do
    get :calattend
    assert_response :success
  end

end
