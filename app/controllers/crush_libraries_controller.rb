class CrushLibrariesController < ApplicationController

  def create
      if !user_signed_in?
        redirect_to new_user_registration_path
      else
        crush = Crush.find(params[:id])
        @library = current_user.library
        @library.add_crush(crush)
        if @library.save
          flash[:success] = "Le coup de coeur a bien été ajouté à ta bibliothèque :)"
          redirect_to crushes_path
        end
      end
    end

    def destroy
      library = current_user.library.id
      crushlibrary = CrushLibrary.find_by(library_id: library)
      crush_id = crushlibrary.crush.id
      CrushLibrary.find_by(crush_id: crush_id).destroy
      redirect_to library_path
    end
end
