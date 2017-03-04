require 'test_helper'

class StartpagesControllerTest < ActionController::TestCase
  test "should get startpage" do
    get :startpage
    assert_response :success
  end

end
