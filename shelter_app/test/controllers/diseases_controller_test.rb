require "test_helper"

class DiseasesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diseases_index_url
    assert_response :success
  end

  test "should get create" do
    get diseases_create_url
    assert_response :success
  end

  test "should get destroy" do
    get diseases_destroy_url
    assert_response :success
  end
end
