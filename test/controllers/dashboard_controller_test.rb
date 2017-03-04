require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get panel" do
    get :panel
    assert_response :success
  end

end
