# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

def prepare

    book_title = Faker::Book.title
    genre = Faker::Book.genre
    author_name = Faker::Book.author
    author_country = Faker::Address.country
    description = Faker::Lorem.paragraph
    quote = Faker::Books::Lovecraft.sentence
    {book_title: book_title, genre: = genre, author_name: = author_name, author_country: = author_country, description: description, quote: = quote}
end

50.time do 
    crush = Crush.create(prepare)
end
puts "\nTotal crush created: #{Crush.all.count}"

