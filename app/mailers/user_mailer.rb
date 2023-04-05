class UserMailer < ActionMailer::Base
  default from: "vincventure@gmail.com "
  def sendMail(email)
  @greeting = "Hi"
  
  mail to: email, subject: "Your Subject"
  end
  end
  