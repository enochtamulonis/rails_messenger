class MessagesController < ApplicationController
  before_action :get_room
  before_action :set_username

  def create
    @message = @room.messages.build(message_params)
    if @message.save
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to room_path(@room) }
      end
    end
  end

  def destroy
    @message = @room.messages.find(params[:id])
    @message.destroy!
    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to room_path(@room)}
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def get_room
    @room = Room.find(params[:room_id])
  end
end
