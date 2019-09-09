class Crush < ApplicationRecord
    #validates :book_title, presence: true,
    #validates :genre, presence: true,
    #validates :author_name, presence: true,
    #validates :author_country, presence: true,
    #validates :description, presence: true,
    #validates :quote, presence: true
    belongs_to :user
    has_many :crush_libraries
    has_many :libraries, through: :crush_libraries
end
