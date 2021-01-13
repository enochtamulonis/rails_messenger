class RoomsController < ApplicationController
  before_action :set_room, except: [:new, :create, :messenger_sidebar]

  def new
    @room = Room.new
  end

  def edit
  end

  def show
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

  def set_room
    @room = Room.find(params[:id])
  end

end
