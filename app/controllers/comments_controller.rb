class CommentsController < ApplicationController

  def index
    @comment = Comment.all
  end


  def show
    @comment = Comment.all
  end

  def new
    @comment = Comment.new
  end


  def update
    @comment = Comment.all
  end

  def create
    @comment = Comment.new(comment_params)

    @comment.save
    redirect_to comments_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to comments_path
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
