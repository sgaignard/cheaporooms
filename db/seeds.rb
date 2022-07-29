# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hotel.destroy_all
Room.destroy_all

puts "creating first Hotel"

Hotel.create!(
  name: "Rocky Pop Hotel",
  address: "332 avenue des alpages, les Houches"
)

puts "creating second hotel"

Hotel.create!(
  name: "Albert Premier",
  address: "23 avnue de l'aiguille du midi, Chamonix"
)

Hotel.create!(
  name: "Hotel des cristaliers",
  address: "150 rue docteur Paccard, Chamonix"
)

Hotel.create!(
  name: "l'Oustalet",
  address: "54 rue des moulins, Chamonix"
)
puts "finished hotels"

56.times do
  room = Room.new(
    price_per_night: (30..230).to_a.sample,
    capacity: (1..8).to_a.sample
  )
  hotel = Hotel.all.sample
  room.hotel = hotel
  room.save!
end
