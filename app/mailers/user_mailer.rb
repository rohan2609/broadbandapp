class UserMailer < ApplicationMailer
	default from: 'demo.qset@gmail.com'

	 def send_signup_email(user)
    @user = user
     user = "#{@user.email}"
     password = "#{@user.password}"
    mail( :to => user,
          :subject => 'Thanks for signing up for our amazing app' )
  end
end


 	