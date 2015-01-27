class SessionsController < ApplicationController
  def new
  end

  def create
	user = User.find_by(login: params[:login])
	if user and user.authenticate(params[:password])
		session[:user_id] = user.id
		redirect_to lk_today_url
	else
		redirect_to login_url, alert: "Неверная комбинация логина и пароля"
	end
  end

  def destroy
	session[:user_id] = nil
	redirect_to application_url,notice: "Вы успешно вышли"
  end
end
