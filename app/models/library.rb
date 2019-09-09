class Library < ApplicationRecord
  belongs_to :user
  has_many :crush_libraries
  has_many :crushes, through: :crush_libraries
end
