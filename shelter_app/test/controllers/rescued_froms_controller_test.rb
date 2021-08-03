require "test_helper"

class RescuedFromsControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get rescued_froms_controller_url
    assert_response :success
  end
end
