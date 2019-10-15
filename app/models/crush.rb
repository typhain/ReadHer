class Crush < ApplicationRecord
    include PgSearch::Model

    belongs_to :user
    has_many :crush_libraries, dependent: :destroy
    has_many :libraries, through: :crush_libraries
    has_many :comments, dependent: :destroy

    validates :book_title, :genre, :author_name, :author_country, :description, :quote, presence: { message: 'ne peut pas être laissé vide' }


    pg_search_scope :roughly_spelled_like,
                 against: [:author_name, :book_title],
                 using: {
                   trigram: {
                     threshold: 0.2
                   }
                 }

end
