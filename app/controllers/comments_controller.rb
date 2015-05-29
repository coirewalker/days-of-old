class CommentsController < ApplicationController
	before_action :authenticate_user!

  def create
  	@comment = Comment.create(params.require(:comment).permit(:post).merge(user: current_user, comment_id: params[:comment_id]))
  	respond_to do |format|
  		format.html {redirect_to @comment.article, notice: "comment added" }
  		format.js
  	end
  end

  def destroy
  end
end
