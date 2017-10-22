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
		redirect_to @gift
	end

	private
	  def gift_params
	    params.require(:gift).permit(:name, :comment, :link)
	  end

end
