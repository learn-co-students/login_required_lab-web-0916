require 'rails_helper'


RSpec.describe ApplicationHelper, type: :helper do


  it "should return the current user" do
    me = 'Werner Brandes'
    post :create, name: me
    expect(helper.current_user).to eq("Kate Libby")
  end

end