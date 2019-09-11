class CrushesController < ApplicationController

  def index
    @crushes = Crush.all
  end

  def show
    @crush = Crush.find(params[:id])
  end

  def new
    p "###############"
  end

  def create
    @user = current_user
    @crush = Crush.new(:user => @user, :book_title=> params[:book_title], :genre => params[:genre], :author_name => params[:author_name], :author_country => params[:author_country], :description => params[:description], :quote => params[:quote])
      if @crush.save
        redirect_to root_path
      else
        render crushs_path
      end
  end

  def update
  end

  def destroy
  end

end
