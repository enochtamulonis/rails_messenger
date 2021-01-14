module ApplicationHelper
  def set_username
    if !@username
      @username = session[:current_user]
    end
  end
end
