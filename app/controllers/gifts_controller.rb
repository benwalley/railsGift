class GiftsController < ApplicationController


	def new
	end

	def show
		@gift = Gift.find(params[:id])
	end

	def list
		@gifts = Gift.all
	end

	def create
		@gift = Gift.new(gift_params)
		@gift.wanter = session[:user_id]
		@gift.given = false

		@gift.save
		redirect_to welcome_path
	end

	def give
		@gift = Gift.find(params[:gift])
		@gift.giver = session[:user_id]

		@gift.save
	
		redirect_to(all_path)
	end

	def noGive
		@gift = Gift.find(params[:gift])
		@gift.giver = nil

		@gift.save

		redirect_to(all_path)
	end

	private
	  def gift_params
	    params.require(:gift).permit(:name, :comment, :link)
	  end

end
