class RoomsController < ApplicationController
  before_action :set_room, except: [:new, :create, :messenger_sidebar]
  before_action :set_username
  before_action :check_current_user
  def new
    @room = Room.new
  end

  def edit
  end

  def show
    @messages = @room.messages.order("created_at ASC").limit(5)
  end

  def sign_in

  end

  def create
    session[:current_user] = params[:room][:name]
    @room = Room.new(name: session[:current_user], users: [session[:current_user]])
    if @room.save
      redirect_to @room
    end
  end

  def destroy
    @room.destroy
    redirect_to root_pat
  end

  def update
    @room.update(room_params)
    redirect_to signed_in_home_path
  end

  private

  def check_current_user
    unless session[:current_user]
      redirect_to rooms_sign_in_path
    end
  end

  def set_room
    @room = Room.find(params[:id])
  end

end
