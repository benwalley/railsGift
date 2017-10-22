class SessionsController < ApplicationController
	def create
		@user = User.find_by(name: params[:user][:name], password: params[:user][:password])
		if @user
			session[:user_id] = @user.id
    		render 'users/show'
		else
			render 'new'
		end
		
		
		
	end

	def new
	end

	def destroy
		session[:user_id] = nil
		redirect_to('/')
	end


end
