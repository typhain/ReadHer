class CrushesController < ApplicationController

  def index
    @crushes = Crush.all
  end

  def show
    @crush = Crush.find(params[:id])
  end

  def new
  end

  def create
    if !user_signed_in?
      redirect_to new_user_registration_path
    else
    @user = current_user
    @crush = Crush.new(:user => @user, :book_title=> params[:book_title], :genre => params[:genre], :author_name => params[:author_name], :author_country => params[:author_country], :description => params[:description], :quote => params[:quote])
      if @crush.save
        redirect_to root_path(@crush)
      else
        render crushs_path
      end
    end
  end

  def edit
    @crush = Crush.find(params[:id])
  end

  def update
      @user = current_user
      user_crushes = @user.crushes
      @crush = user_crushes.find_by(params[:id])
      @Crush.update_attributes(params[:crush])
    end
  end
