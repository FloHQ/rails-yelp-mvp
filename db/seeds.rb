# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Cleaning Seeds'
Restaurant.destroy_all
puts 'Creating 15 fake restaurants...'
15.times do
  restaurant = Restaurant.new(
    "name" =>   Faker::StarTrek.character,
    "address" => "#{Faker::Address.street_address} #{Faker::Address.city}",
    "category" => ["chinese", "italian", "japanese", "french", "belgian"].sample,
    "phone_number" => "+33 1 #{Faker::Number.number(8)}"
  )
  restaurant.save!
end
puts 'Finished!'
