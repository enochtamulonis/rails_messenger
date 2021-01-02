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
    @room = Room.new(name: params[:room][:users_name].to_s, user_id: current_user.id)
    @room.users = [current_user.id, params[:room][:user_id].to_i]
    if @room.save
      redirect_to signed_in_home_path
    end
  end

  def destroy
    @room.destroy
    redirect_to signed_in_home_path
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
