# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Yard.destroy_all
Cat.destroy_all
House.destroy_all

coarsenesses = ["rough", "wiry", "bristly", "gunky", "sandpapery"]

names = ["Lexander", "Ichael", "Wyndolin", "Artha", "Julianus"]

yard_names = ["Jacobsen's", "Jones'", "Lewiston's"]

sizes = ["brawl", "rumble", "skirmish", "engagement", "war"]

names.each do |name|
  Cat.create!(name: name, coarseness: coarsenesses.sample, claw_count: (rand(30) + 1))
end

jones = House.create!(name: "Jones'es", address: "123 Spring St")
ruths = House.create!(name: "Ruths", address: "125 Spring St")
blakes = House.create!(name: "Blakes", address: "555 Summer Ave")

houses = [jones, ruths, blakes]

yard_names.each do |y_name|
  Yard.create!(title: y_name, size: sizes.sample, cat: Cat.all.sample, house: houses.sample)
end

rando_yard = Yard.all.sample

Cat.first.yards << rando_yard
