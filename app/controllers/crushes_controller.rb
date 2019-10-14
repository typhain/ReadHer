class CrushesController < ApplicationController

  before_action :authenticate_user!, only:[:new, :create, :edit, :update, :destroy]
  before_action :set_crush, only:[:show, :edit, :update, :destroy]

  def index

    if params[:term].blank?
    @crushes = Crush.order('created_at DESC').paginate(:page => params[:page], :per_page => 10)

    elsif params[:term].present? && !params[:term].nil?
      @crushes = Crush.roughly_spelled_like(params[:term]).paginate(:page => params[:page], :per_page => 10)
    elsif
      flash[:info] = "Aucun coup de coeur ne correspond à ta recherche. Reste plus qu'à en créer un ;)"
    end

  end


  def show
  end

  def new
    @crush = Crush.new
  end

  def create
    if !user_signed_in?
      redirect_to new_user_registration_path
    else
    @user = current_user
    @crush = Crush.new(:user => @user, :book_title=> params[:book_title], :genre => params[:genre], :author_name => params[:author_name], :author_country => params[:author_country], :description => params[:description], :quote => params[:quote])
      if @crush.save
        flash[:success] = "Ton coup de coeur est maintenant visible par tout.e.s ! :)"
        redirect_to crushes_path
      else
        flash[:errors] = @crush.errors.full_messages
        render new_crush_path
      end
    end
  end

  def edit
  end

  def update

    if @crush.update(crush_params)
    redirect_to @crush
    else
    render 'edit'
    end
  end

  def destroy
    @crush.destroy
    redirect_to crushes_path
  end

end

private

  def crush_params
    params.require(:crush).permit(:user, :book_title, :genre, :author_name, :author_country, :description, :quote)
  end

  def set_crush
    @crush = Crush.find(params[:id])
  end
