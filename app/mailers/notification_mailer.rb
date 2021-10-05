class NotificationMailer < ActionMailer::Base
    default from: 'sumityuvasoft303@gmail.com'
    layout 'mailer'
  
     def send_signup_email(user)
      @user = user
      mail( to: @user.email, subject: 'Thanks for signing up for our amazing app' )
    end
  end
  