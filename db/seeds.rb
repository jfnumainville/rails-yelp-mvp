# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
5.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample(1)
  phone = Faker::PhoneNumber.cell_phone
  p new_restaurant = Restaurant.create!(name: name, address: address, category:category[0], phone_number:phone)


    3.times do
      content = Faker::Restaurant.review
      id = new_restaurant.id
      rating = rand(6)
      p Review.create!(content: content, restaurant_id: id, rating: rating)
    end
end
