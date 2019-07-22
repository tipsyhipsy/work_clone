require 'test_helper'

class TwiclonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twiclones_index_url
    assert_response :success
  end

end
