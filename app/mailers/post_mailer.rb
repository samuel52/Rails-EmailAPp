class PostMailer < ActionMailer::Base

	

	def post_created(user, post)
		@post = post
		mail(to: user.email,
			from: "chat@juvenisspa.com",
			subject: "Post Created"
				)
	end
end