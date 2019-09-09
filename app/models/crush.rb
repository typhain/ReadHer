class Crush < ApplicationRecord
    validates :book_title, presence: true, 
    validates :genre, presence: true, 
    validates :author_name, presence: true, 
    validates :author_country, presence: true, 
    validates :description, presence: true, 
    validates :, presence: true, 
end
