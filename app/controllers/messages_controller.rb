class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to root_url, notice: "Thank you for contacting me. I will be in touch."
    else
      flash[:notice] = "Something went wrong. Please try again."
      render "new"
    end
  end
end
