class UsersController < ApplicationController
	def index
		if session[:user_id]
			@user = User.find(session[:user_id])
			redirect_to(welcome_path)
			@gifts = Gift.all
		else

			redirect_to(login_path)
		end
	end

	def welcome
		@wanting = Gift.where(wanter: session[:user_id])
		@giving = Gift.where(giver: session[:user_id])
		
	end

	def new
	end

	def create
		@user = User.new(user_params)
		@user.save
		session[:user_id] = @user.id
		redirect_to(welcome_path)
	end

	def show
		@user = User.find(params[:id])
		@gifts = Gift.where(wanter: params[:id])

		

		# @comments = Comment.all
	end

	def list
		@users = User.all

	end

	def destroy
		@user = User.find(params[:user_id])
		@user.destroy

		@userGifts = Gift.where(wanter: session[:user_id])

		@userGifts.each do |gift|
			gift.destroy
		end

		session[:user_id] = nil

		redirect_to all_path
	end

	private 
		def user_params
			params.require(:user).permit(:name, :password)
		end
end
