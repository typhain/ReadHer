# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Crush.destroy_all
User.destroy_all
Library.destroy_all
Conversation.destroy_all
Message.destroy_all
Comment.destroy_all
CrushLibrary.destroy_all

30.times do
  user = User.new
  user.skip_sending_welcome_email = true
  user.email = Faker::Internet.email
  user.pseudo = Faker::Superhero.descriptor
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.description = Faker::Lorem.paragraph
  user.city = Faker::Address.city
  user.password = "123456"
  user.save
end

30.times do
  Crush.create!(user: User.all.sample, book_title: Faker::Book.title, genre: Faker::Book.genre, author_name: Faker::Book.author, author_country: Faker::Address.country, description: Faker::Lorem.paragraph, quote: Faker::Quote.yoda)
end


10.times do
  Conversation.create!(sender: User.all.sample, receiver: User.all.sample)
end

15.times do
  Message.create!(user: User.all.sample, conversation: Conversation.all.sample, body:Faker::Lorem.paragraph, read:false)
end

30.times do
  Comment.create!(user: User.all.sample, body:Faker::Lorem.paragraph, crush: Crush.all.sample)
end

30.times do
  CrushLibrary.create!(crush: Crush.all.sample, library: Library.all.sample)
end

# 20.times do
#   Library.create!(user: User.all.sample)
# end

puts "\nTotal user created: #{User.all.count}"
puts "\nTotal crush created: #{Crush.all.count}"
puts "\nTotal library created: #{Library.all.count}"
puts "\nTotal Conversations created: #{Conversation.all.count}"
puts "\nTotal Messages created: #{Message.all.count}"
puts "\nTotal Comment created: #{Comment.all.count}"
puts "\nTotal CrushLibrary created: #{CrushLibrary.all.count}"
