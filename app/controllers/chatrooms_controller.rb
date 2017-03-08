class ChatroomsController < ApplicationController
  before_action :find_chatroom, only: [:show]

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @message = Message.new
  end

  def new
  end

  def create
  end

  private

  def find_chatroom
    @chatroom = Chatroom.find(params[:id])
  end

  def chatroom_params
    params.require(:chatroom).permit(:topic)
  end

end
