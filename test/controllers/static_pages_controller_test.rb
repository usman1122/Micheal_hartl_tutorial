require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  test "should get help" do
    get :help
     assert_select "title", "Help | Ruby on Rails Tutorial Sample App"
     assert_response :success

  end
   test "should get about" do
   	get :about
   	assert_select "title", "About | Ruby on Rails Tutorial Sample App"
   	assert_response :success
   	end
   test "should get Contact" do
   	get :contact
   	assert_select "title","Contact | Ruby on Rails Tutorial Sample App" 
    assert_response :success
   end
end
