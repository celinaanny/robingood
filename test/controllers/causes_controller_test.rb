require 'test_helper'

class CausesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get causes_new_url
    assert_response :success
  end

end
