class CommentsController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.new(comment_params)
    @comment.user = current_user
    @comment.save

    redirect_to blog_path(@blog)
  end
  


  private

  def comment_params
    params.require(:comment).permit(:commenter, :blog)
  end

end
