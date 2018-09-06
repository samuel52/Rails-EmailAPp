class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         after_create :welcome_send
         def welcome_send
         	UserMailer.welcome_send(self).deliver
         	# redirect_to root_path, alert: 'Thank you'
         end
end
