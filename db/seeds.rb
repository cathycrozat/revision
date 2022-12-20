# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require "nokogiri"

puts "Cleaning database..."
Flat.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create!(email: "catherinecrozat@gmail.com", password: "toto123")
photo = URI.open("https://ca.slack-edge.com/T02NE0241-U045TDQ4M43-d011388c1f01-512")
user1.photo.attach(io: photo, filename: "profil")

puts "Creating flats..."
flat1 = Flat.create!(name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3)
photo = URI.open("https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg")
flat1.photo.attach(io: photo, filename: "profil")

flat2 = Flat.create!(name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3)
photo = URI.open("https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg")
flat2.photo.attach(io: photo, filename: "profil")

flat3 = Flat.create!(name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3)
photo = URI.open("https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg")
flat3.photo.attach(io: photo, filename: "profil")

flat4 = Flat.create!(name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3)
photo = URI.open("https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_960_720.jpg")
flat4.photo.attach(io: photo, filename: "profil")

puts "Finished!"
