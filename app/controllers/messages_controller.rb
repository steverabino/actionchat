class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = current_user.messages.build(message_params)
    if message.save
      # do some stuff
    else
      redirect_to chatrooms_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :chatroom_id)
  end
end