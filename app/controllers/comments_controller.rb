class CommentsController < ApplicationController
before_action :authenticate_user!

  def new
    @comments = Comment.new
  end

  def show
    @comment = Comment.find(params(:comment_id))
  end

  def create
    @user = current_user

    @crush = Crush.find(params[:crush_id])

      @comment = Comment.new(:user => @user, :crush=> @crush, :body => params[:content])
      if @comment.save
        redirect_to crush_path(@crush.id)
      else

        render crush_comments_path
      end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to request.referrer
  end

end
