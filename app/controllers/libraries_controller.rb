class LibrariesController < ApplicationController
before_action :authenticate_user!

  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find_by(user_id: current_user.id)
  end

end
