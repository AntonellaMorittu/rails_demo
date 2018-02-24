class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.persisted?
      #go back to the page you came from
      flash[:success] = "Create your comment, thank you!"
      redirect_back(fallback_location: root_path)
    else
      #go back to the page you came from
      #and render error message as flash
      flash[:error] = "Your comment was not created"
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:email, :body)
  end
end
