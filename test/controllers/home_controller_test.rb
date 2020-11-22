require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get frontpage" do
    get home_frontpage_url
    assert_response :success
  end

end
