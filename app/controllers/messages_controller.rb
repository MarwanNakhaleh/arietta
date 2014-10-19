class MessagesController < ApplicationController
  before_action :all_messages, only: [:index, :create, :update, :destroy]
  before_action :set_messages, only: [:edit, :update, :destroy]
  respond_to :html, :js

  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.create(message_params)
    @message.user_id = current_user.id
    @message.date = DateTime.now
  end

  def update
    @message.update_attributes(message_params)
  end

  def destroy
    @message.destroy
  end

  private

    def all_messages
      @messages = Message.all
    end

    def set_messages
      @message = Message.find(params[:id])
    end

    def message_params
      params.require(:message).permit(:content, :date, :user_id)
    end
end
