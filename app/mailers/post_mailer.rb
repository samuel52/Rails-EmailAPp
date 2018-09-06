class PostMailer < ActionMailer::Base

	def post_created(user)
		mail(to: user.email,
			from: "chat@juvenisspa.com",
			subject: "Post Created",
			body: "My first mailer"

				)
	end
end