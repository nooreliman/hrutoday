require "test_helper"

class CommentNotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get mark" do
    get comment_notifications_mark_url
    assert_response :success
  end
end
