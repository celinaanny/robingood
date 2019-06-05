# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Finding.destroy_all
Item.destroy_all
Code.destroy_all
Cause.destroy_all
User.destroy_all


puts "Creating user.."
User.create!(user_name: "1", first_name: "Toni", last_name: "first", email: "first@example.com", password: "123456")
User.create!(user_name: "2", first_name: "Alberto", last_name: "second", email: "second@example.com", password: "123456")
User.create!(user_name: "3", first_name: "Peter", last_name: "third", email: "third@example.com", password: "123456")
User.create!(user_name: "placeholder", first_name: "placeholder", last_name: "placeholder", email: "placeholder@example.com", password: "placeholder", id: 999999999)

puts "Created user"

puts "Creating causes..."

Cause.create!(name: "Celina's hospital for abused puppy pals", image: "https://images.pexels.com/photos/1663421/pexels-photo-1663421.jpeg", description: "Good")
Cause.create!(name: "Stephan's centre for traumatized coders", image: "https://images.pexels.com/photos/7111/couch-conference-startup-bro-concentration.jpg", description: "Good")
Cause.create!(name: "Mia's centre for unrequited love rehab", image: "https://images.pexels.com/photos/7111/couch-conference-startup-bro-concentration.jpg", description: "Good")

puts "Causes created"
puts "Create Items..."

Item.create!(name: "iPhone", description: "my iphone is beautiful", qr_number: "1", disabled: false, code: User.first.codes.first, user: User.first)
Item.create!(name: "Book", description: "my book is beautiful", qr_number: "1", disabled: false, code: User.last.codes.first, user: User.last)

puts "Items created"
puts "Creating finding..."

Finding.create!(address: "Le Wagon, Berlin", message: "Left your phone with Rich", state: "pending", item: Item.first , cause: Cause.first )
Finding.create!(address: "Le Wagon, Berlin", message: "Left your phone with Rich", state: "pending", item: Item.find(2) , cause: Cause.find(2) )
Finding.create!(address: "Le Wagon, Berlin", message: "Left your phone with Rich", state: "pending", item: Item.last , cause: Cause.last )

puts "Findings created"


