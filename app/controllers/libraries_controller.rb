class LibrariesController < ApplicationController
before_action :authenticate_user!

  def index
    @library = Library.find_by(params[:id])
  end

  def show
    @library = Library.find_by(user_id: current_user.id)
  end

end
