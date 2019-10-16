require 'rails_helper'

RSpec.describe SessionsController do
  describe 'create' do
    it 'redirects to login page if :name is nil' do
      post :create, params: { name: nil }
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end

    it 'redirects to login page if :name is empty' do
      post :create, params: { name: '' }
      expect(response).to redirect_to controller: 'sessions', action: 'new'
    end

    it 'sets session[:name] if :name was given' do
      me = 'Werner Brandes'
      post :create, params: { name: me }
      expect(@request.session[:name]).to eq me
    end
  end

  describe 'destroy' do
    it 'leaves session[:name] nil if it was not set' do
      post :destroy
      expect(@request.session[:name]).to be nil
    end

    it 'clears session[:name] if it was set' do
      post :create, params: { name: 'Trinity' }
      expect(@request.session[:name]).to_not be nil
      post :destroy
      expect(@request.session[:name]).to be nil
    end
  end
end
