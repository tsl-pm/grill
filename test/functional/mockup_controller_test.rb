require 'test_helper'

class MockupControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get reservations" do
    get :reservations
    assert_response :success
  end

end
