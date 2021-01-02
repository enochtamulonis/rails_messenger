module ApplicationHelper
  def route_to_home
    if current_user
      signed_in_home_path
    else
      root_path
    end
  end
end
