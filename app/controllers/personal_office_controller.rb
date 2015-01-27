class PersonalOfficeController < ApplicationController
	def today
		if session[:user_id] == nil
			redirect_to login_url
		else
			@user = User.find(session[:user_id])
		end
	end
	
end
