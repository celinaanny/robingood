class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to RobinGood')
  end

  def found
    @user = params[:user]
    @finding = params[:finding]
    mail(to: @user.email, subject: 'Your item was found')
  end
end
