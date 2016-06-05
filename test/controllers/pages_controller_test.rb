require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "Welcome | Real-time chat application"
    assert_select "h1", "Welcome to our site!"
  end

end
