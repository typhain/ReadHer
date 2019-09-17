class Crush < ApplicationRecord
    include PgSearch::Model
    #validates :book_title, presence: true,
    #validates :genre, presence: true,
    #validates :author_name, presence: true,
    #validates :author_country, presence: true,
    #validates :description, presence: true,
    #validates :quote, presence: true
    belongs_to :user
    has_many :crush_libraries, dependent: :destroy
    has_many :libraries, through: :crush_libraries

    pg_search_scope :roughly_spelled_like,
                 against: :author_name,
                 using: {
                   trigram: {
                     threshold: 0.2
                   }
                 }
                 pg_search_scope :roughly_spelled_like,
                              against: :book_title,
                              using: {
                                trigram: {
                                  threshold: 0.2
                                }
                              }


end
