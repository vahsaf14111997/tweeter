class CommentsController < ApplicationController
  def create
    respond_to do |format|
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    format.html { redirect_to @post, notice: "Comment was successfully created." }
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :post_id, :user_id)
    end
end
