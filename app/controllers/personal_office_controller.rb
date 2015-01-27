class PersonalOfficeController < ApplicationController
	def today
		if session[:user_id] == nil
			redirect_to login_url
		else
			@user = User.find(session[:user_id])
		end
	end
	def history
		if session[:user_id] == nil
			redirect_to login_url
		else
			@user = User.find(session[:user_id])
		end
		
		all_dairies = Dairy.where(user_id: @user.id)
		@sorted_by_date = Hash.new
		all_dairies.each do |dairy|
			dairy_date = dairy.when.to_date
			if @sorted_by_date[dairy_date] == nil
				@sorted_by_date[dairy_date] = Array.new
			end
			@sorted_by_date[dairy_date].push(dairy)
		end
		return @sorted_by_date = @sorted_by_date.sort.reverse
	end
	
	
end
