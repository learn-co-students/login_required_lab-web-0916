require 'test_helper'

class SecretsControllerTest < ActionController::TestCase
  test "should redirect to login if you're not logged in" do
    get :show
    assert_redirected_to controller: 'sessions', action: 'new'
  end

  test "should show you the secret if you're logged in" do
    session[:name] = 'Maya Angelou'
    get :show
    assert_response 200
  end
end
