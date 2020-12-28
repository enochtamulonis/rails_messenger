class RoomsController < ApplicationController
  before_action :set_room, except: [:new, :create]

  def new
    @room = Room.new
  end

  def edit
  end


  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to pages_signed_in_home_path
    end
  end

  def destroy
    @room.destroy
    redirect_to pages_signed_in_home_path
  end

  def update
    @room.update(room_params)
    redirect_to pages_signed_in_home_path
  end

  private

  def set_room
    @room = Room.find(params[:id])
  end
  def room_params
    params.require(:room).permit(:name)
  end
end
