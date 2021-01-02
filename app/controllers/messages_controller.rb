class MessagesController < ApplicationController
  require 'pry'

  before_action :get_room
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  def new
    @message = @room.messages.build
  end

  def index
    @messages = @room.messages
  end

  def create
    @message = @room.messages.build(message_params)
    @message.user_id = current_user.id
    if @message.save
      redirect_to room_messages_path(@room)
    end
  end

  def destroy
    @message.destroy!
    redirect_to room_messages_path(@room)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def set_message
    @message = @room.messages.find(params[:id])
  end

  def get_room
    @room = Room.find(params[:room_id])
  end
end
