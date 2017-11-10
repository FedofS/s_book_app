require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  
 

  test "should get home" do
    get :home_path
    assert_response :success
  end

	test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Ruby on Rails Tutorial"
  end

end
