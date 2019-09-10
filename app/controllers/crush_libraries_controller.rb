class CrushLibrariesController < ApplicationController

  def create
      if !user_signed_in?
        redirect_to new_user_registration_path
      else
        crush = Crush.find(params[:id])
        @library = current_user.library
        @library.add_crush(crush)
        if @library.save
          redirect_to crush_path(crush)
        end
      end
    end

    def destroy
      Crush_libraries.find(params[:id]).destroy
      redirect_to crush_path(@crush)
    end
end
