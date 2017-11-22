class SessionsController < ApplicationController
	skip_before_action :require_login, only: [:new, :create]
	def create
		@user = User.find_by(name: params[:user][:name], password: params[:user][:password])
		if @user
			session[:user_id] = @user.id
    		redirect_to(welcome_path)
		else
			flash[:error] = "Wrong username or password"
			redirect_to(welcome_path)
		end
		
		
		
	end

	def new

	end

	def destroy
		session[:user_id] = nil
		redirect_to('/')
	end


end
