require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get index via /member" do
    get "/member"
    assert_response :success
  end

  test "should get index via /membre" do
    get "/membre"
    assert_response :success
  end
end
