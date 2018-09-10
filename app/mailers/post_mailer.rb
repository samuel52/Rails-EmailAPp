class PostMailer < ActionMailer::Base

	

	def post_created(post)
		@post = post
		mail(to: "samuelsadiq52@gmail.com",
			from: "chat@juvenisspa.com",
			subject: "Post Created"
				)
	end
end