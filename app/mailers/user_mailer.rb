class UserMailer < ApplicationMailer
	default from: 'chat@juvenisspa.com'

	def welcome_send(user)
		@user = user
		mail to: user.email, subject: 'Welcome to my site', from: 'chat@juvenisspa.com'
	end
	
end
