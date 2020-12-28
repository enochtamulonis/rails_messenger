class PagesController < ApplicationController

  def signed_in_home
    @rooms = Room.all
  end

  def home
  end

  def search
    render json: { friends: [] }
  end
  def about
  end

  def help
  end

end
