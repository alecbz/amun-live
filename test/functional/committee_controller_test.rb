require 'test_helper'

class CommitteeControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

end
