class User < ActiveRecord::Base
	validates :login,presence: true,uniqueness: true
	has_secure_password
	has_many :dairies
	
	def get_today_diaries
		Dairies.find_by(user_id: id)
	end
end
