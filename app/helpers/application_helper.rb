module ApplicationHelper

  def current_user
    session[:name]
  end
end
