# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Crush.destroy_all

20.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, description: Faker::Lorem.paragraph, password: "123456")
end

20.times do
  Crush.create!(user: User.all.sample, book_title: Faker::Book.title, genre: Faker::Book.genre, author_name: Faker::Book.author, author_country: Faker::Address.country, description: Faker::Lorem.paragraph, quote: Faker::Quote.yoda)
end

puts "\nTotal crush created: #{Crush.all.count}"