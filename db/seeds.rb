# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Finding.destroy_all
Item.destroy_all
Code.destroy_all
User.destroy_all

puts "Creating users..."
paula = User.create!(first_name: "Paula", last_name: "Gold", user_name: "pgold", password: "123456", email: "pgold@example.com")

puts "Creating codes..."
code_1 = Code.create!(user: paula)

code_2 = Code.create!(user: paula)

puts "Creating items..."
phone = Item.create!(user: paula, code: code_1, name: "phone", description: "my most prized posession", qr_number: 1)

laptop = Item.create!(user: paula, code: code_2, name: "laptop", description: "my best friend", qr_number: 1)

# puts "Creating finding..."
# Finding.create!(address: "Le Wagon, Berlin", message: "Left your phone with Rich", home: false, item: phone , cause: )
