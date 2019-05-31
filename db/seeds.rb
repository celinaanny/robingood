# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Finding.destroy_all

Cause.create!(name: "Celina's hospital for abused puppy pals", image: "https://images.pexels.com/photos/1663421/pexels-photo-1663421.jpeg", description: "Good")
Cause.create!(name: "Stephan's centre for traumatized coders", image: "https://images.pexels.com/photos/7111/couch-conference-startup-bro-concentration.jpg", description: "Good")
Cause.create!(name: "Mia's centre for unrequited love rehab", image: "https://images.pexels.com/photos/7111/couch-conference-startup-bro-concentration.jpg", description: "Good")

# puts "Creating finding..."
# Finding.create!(address: "Le Wagon, Berlin", message: "Left your phone with Rich", home: false, item: phone , cause: )
