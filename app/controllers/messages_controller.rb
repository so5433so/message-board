class MessagesController < ApplicationController
  def index
    @message = Message.new
    @message = Message.all
  end
  
  def create
    @message = Message.new(message_params)
    @message.save
    redirect_too root_path , notice: 'メッセージを保存しました'
  end
end
