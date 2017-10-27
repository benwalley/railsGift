class CommentsController < ApplicationController

	def create
		@comment = Comment.new(comment_params)
		@comment.name = User.find(session[:user_id]).name
		@comment.save
		redirect_to request.referrer

		# render plain: params[:comment].inspect
	end

	private
	  def comment_params
	    params.require(:comment).permit(:name, :comment, :number)
	  end

end
