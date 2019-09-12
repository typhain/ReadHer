class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    p "#########################"
  end

end
