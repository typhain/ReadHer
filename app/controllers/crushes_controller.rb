class CrushesController < ApplicationController

  def index
    @crushes = Crush.all
  end

  def show
    @crush = Crush.find(params[:id])
  end

  def create
  end

  def update
  end

  def destroy
  end

end
