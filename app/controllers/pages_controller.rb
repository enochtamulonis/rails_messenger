class PagesController < ApplicationController
  def signed_in_home
    @rooms = Room.all
  end

  def home
  end

  def search
    @q = User.where('username LIKE :query OR email LIKE :query', query: "%#{params[:q]}%").ransack
    @users = @q.result(distinct: true).limit(8)
    respond_to do |format|
      format.turbo_stream
    end
  end

  def about
  end

  def help
  end

end
