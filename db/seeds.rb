require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Lesson.destroy_all
User.destroy_all

puts "Creating a lesson..."

User.create([
  { email: "maria@example.com", password: "1234567" },
  { email: "mmak@example.com" , password: "1234567" },
  { email: "jun@example.com", password: "1234567" },
  { email: "jay@example.com", password: "1234567" }
])

25.times do
  Lesson.create!(
    name: Faker::Food.dish,
    address: Faker::Address.full_address,
    cuisine_genre: Faker::Food.ethnic_category,
    description: Faker::Food.description,
    capacity: Faker::Number.within(range: 1..120),
    fee: Faker::Number.within(range: 0..125),
    lesson_length_minutes: Faker::Number.within(range: 45..120),
    user: User.all.sample
   )
 end


puts "Finished!"
