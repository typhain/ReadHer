# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD

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

=======
require 'faker'
Crush.destroy_all

50.times do
  Crush.create(book_title: Faker::Book.title, genre: Faker::Book.genre, author_name: Faker::Book.author, author_country: Faker::Address.country_name_to_code, description: Faker::Lorem.paragraph, quote: Faker::Quotes::Shakespeare.hamlet_quote)
end

puts "\nTotal crush created: #{Crush.all.count}"
>>>>>>> dad2781cde2da41d663a17be03848fb56e4e7902
