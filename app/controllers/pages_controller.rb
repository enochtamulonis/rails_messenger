class PagesController < ApplicationController
  def signed_in_home
    @rooms = Room.all
  end

  def home
    @room = Room.new
  end

  def search
    @room = Room.new
    @q = User.where('username LIKE :query OR email LIKE :query', query: "%#{params[:q]}%")
    @users = @q.limit(8)
    respond_to do |format|
      format.turbo_stream
    end
  end

  def about
  end

  def help
  end

end
