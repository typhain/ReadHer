class CrushesController < ApplicationController

  def index
    if params[:term]
      @crushes = Crush.roughly_spelled_like(params[:term])
    else
      @crushes = Crush.all
    end
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
    @crush = Crush.find(params[:id])

    if @crush.update(crush_params)
    redirect_to @crush
    else
    render 'edit'
    end
  end

  def destroy
    @crush = Crush.find(params[:id]).destroy
    redirect_to root_path
  end

end

private
  def crush_params
    params.require(:crush).permit(:user, :book_title, :genre, :author_name, :author_country, :description, :quote)
  end
