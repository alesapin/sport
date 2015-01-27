class Dairy < ActiveRecord::Base
	belongs_to :user
	belongs_to :exercise
	has_many :attempts
	def self.get_today_start
		time = Time.now()
		return 	Time.new(time.year,time.month,time.day)
	end
	def self.get_today_end
		return get_today_start+86399
	end
	def done?
		if self.done
			 return true
		end
		self.attempts.each do |attempt|
			if not attempt.done 
				return false
			end
		end
		return true
	end
end
