class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created
    @greeting = "Hi"
    mail from:"prathikshark2002@gmail.com",to: "manikantap036@gmail.com",subject: "Action Mailer"
  end
end
