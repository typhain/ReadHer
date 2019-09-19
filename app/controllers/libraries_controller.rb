class LibrariesController < ApplicationController
before_action :authenticate_user!

  def index
    @libraries = Library.all
  end

  def show
    @user = User.find(params[:id])
    @library = Library.find_by(user_id: @user.id)
  end

end
