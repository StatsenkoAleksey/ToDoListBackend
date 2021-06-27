require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get todos_update_url
    assert_response :success
  end
end
