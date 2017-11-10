require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
 

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails Tutorial"
  end

	test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial"
  end

end
