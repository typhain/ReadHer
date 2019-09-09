# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'Faker'
Crush.destroy_all

50.times do
  Crush.create!(book_title: Faker::Book.title, genre: Faker::Book.genre, author_name: Faker::Book.author, author_country: Faker::Books::Lovecraft.location, description: Faker::Lorem.paragraph, quote: Faker::Quotes::Shakespeare.hamlet_quote)
end

puts "\nTotal crush created: #{Crush.all.count}"
