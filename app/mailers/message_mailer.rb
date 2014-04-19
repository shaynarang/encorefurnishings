class MessageMailer < ActionMailer::Base
  default :to => "shaynarang@gmail.com"

  def new_message(message)
    @message = message
    mail(:from => message.email, :subject => message.subject)
  end
end