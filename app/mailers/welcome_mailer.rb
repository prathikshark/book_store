class WelcomeMailer < ApplicationMailer

    def welcome_send
      mail  to: 'manikantap036@gmail.com', subject:"Welcome to my site"
    end
end
