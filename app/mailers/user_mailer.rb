class UserMailer < ApplicationMailer
  default from: "kathrynelizabethcarr@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.response_notification.subject
  #
  def response_notification(user)
    @greeting = "Hi"
    mail to: user.email, subject: "Your question has been answered"
  end
end
