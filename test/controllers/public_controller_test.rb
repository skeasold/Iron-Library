require 'test_helper'

class PublicControllerTest < ActionController::TestCase
  test "should get license" do
    get :license
    assert_response :success
  end

end
