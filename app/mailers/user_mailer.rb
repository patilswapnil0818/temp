class UserMailer < ActionMailer::Base
  default :from => "patilswapnil0818@gmail.com"

  def registration_confirmation(user)
    @user = user
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registration Confirmation")
  end

end