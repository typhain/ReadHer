class Library < ApplicationRecord
  belongs_to :user
  has_many :crush_libraries
  has_many :crushes, through: :crush_libraries

  def add_crush(crush)
     current_crush = crush_libraries.find_by(crush_id: crush.id)
     if !current_crush
       current_item = crush_libraries.create(crush_id: crush.id)
     else
      # flash[:alert] = "You already have added this crush to your library")
     end
     current_crush
  end

end
