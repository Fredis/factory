# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do |index|
	assemblies = Assembly.create!(name: Faker::StarWars.vehicle)
	parts = Part.create!(part_number: Faker::StarWars.droid)
end

10.times do |association|
	Assembly.find(Faker::Number.between(1,10)).parts << Part.find(Faker::Number.between(1,10))
end