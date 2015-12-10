require 'test_helper'

class ApplicationControllerTest < ActionController::TestCase
  test 'current_user returns the name of the current user' do
    session[:name] = 'Kate Libby'
    assert @controller.current_user == session[:name]
  end

  test 'current_user returns nil if nobody is logged in' do
    assert @controller.current_user.nil?
  end
end
