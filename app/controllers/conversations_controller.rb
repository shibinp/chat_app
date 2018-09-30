class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @users =User.all
    @conversations = Conversation.all
  end

  def create
    if Conversation.between(params[:sender_id], params[:recepient_id]).present?
      @conversations = Conversation.between(params[:sender_id], params[:recepient_id]).first
    else
      @conversations = Conversation.create!(conversation_params)
    end
    redirect_to conversation_message_path(@conversation)
  end

  private

  def conversation_params
    params.permit(:sender_id, :recepient_id)
  end
end
