require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test 'create should redirect to login page if :name is nil' do
    post :create
    assert_redirected_to controller: 'sessions', action: 'new'
  end

  test 'create should redirect to login page if :name is empty' do
    post :create, name: ''
    assert_redirected_to controller: 'sessions', action: 'new'
  end

  test 'create should set session[:name] if :name was given' do
    me = 'Werner Brandes'
    post :create, name: me
    assert session[:name] == me
  end

  test 'destroy should leave session[:name] nil if it was not set' do
    post :destroy
    assert session[:name].nil?
  end

  test 'destroy should clear session[:name] if it was set' do
    post :create, name: 'Trinity'
    assert session[:name]
    post :destroy
    assert session[:name].nil?
  end
end
