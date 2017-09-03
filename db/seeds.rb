# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# dino1 = Dinosaur.create!( { name: "Iguanodon", age: 3, image_url: "https://goo.gl/wB6q9q" } )
# dino2 = Dinosaur.create!( { name: "Mosasaurus", age: 10, image_url: "https://goo.gl/aoZsYt" } )
# dino3 = Dinosaur.create!( { name: "Hungarosaurus", age: 15, image_url: "https://goo.gl/EqRlgP" } )
#
# random_number = Random.new
#
# dino4 = Dinosaur.create!( { name: "Trex", age: random_number.rand(100), image_url: "https://goo.gl/EqRlgP" } )

Dinosaur.destroy_all
Valley.destroy_all

valley1 = Valley.create!(name: "Ordesa Valley")
valley2 = Valley.create!(name: "Waipi'o Valley")
valley3 = Valley.create!(name: "The Valley of Geysers")

valleys_count = Valley.count
puts "#{valleys_count} valleys were created."

Dinosaur.create!([
  { name: "Iguanodon", age: 3, image_url: "https://goo.gl/i0S0iv", valley: valley1 },
  { name: "Mosasaurus", age: 10, image_url: "https://goo.gl/MYf6Sc", valley: valley2 },
  { name: "Hungarosaurus", age: 15, image_url: "https://goo.gl/bS5SdS", valley: valley3 },
])

dinos_count = Dinosaur.count
puts "#{dinos_count} dinosaurs were created."
