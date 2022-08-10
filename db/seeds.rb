# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

puts "Cleaning DB"
Flat.destroy_all

puts "Seeding DB"

5.times do
  flat = Flat.create!(
    name: Faker::Restaurant.name ,
    address: Faker::Address.street_address,
    description: Faker::Restaurant.review,
    price_per_night: Faker::Number.number(digits: 2),
    number_of_guests: Faker::Number.number(digits: 1)
  )
  puts "Created Flat #{flat.id}"
end

puts "Seeding complete"
