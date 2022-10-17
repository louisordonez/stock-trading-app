class UserMailer < ApplicationMailer
  default from: 'fintrader.mailer@gmail.com'

  def confirm_email
    @user = params[:user]
    @email_token = params[:email_token]
    @url = "http://localhost:3000/api/v1/auth/verify?token=#{@email_token}"
    mail(to: @user.email, subject: 'Welcome to Fintrader!')
  end
end