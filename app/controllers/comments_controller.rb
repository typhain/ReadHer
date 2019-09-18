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

    # @gossip = Gossip.create(:user => User.all.sample, :title => params[:title], :content => params[:content])
    # redirect_to root_path
      #@comment = Comment.new(:user_id => User.all.sample, :commentable_type => "Gossip", :commentable_id => params[:gossip_id], :content => params[:content]) # avec xxx qui sont les données obtenues à partir du formulaire
      @comment = Comment.new(:user => @user, :crush=> @crush, :body => params[:content])
      if @comment.save # essaie de sauvegarder en base @gossip
        redirect_to crush_path(@crush.id) # si ça marche, il redirige vers la page d'index du site
      else
        # sinon, il render la view new (qui est celle sur laquelle on est déjà)
        render crush_comments_path
      end
  end

  def edit
  end

  def update
  end

end
