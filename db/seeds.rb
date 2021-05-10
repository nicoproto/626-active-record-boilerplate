require "faker"

puts "Creating restaurants... 🌯"

Restaurant.destroy_all

100.times do
  resto = Restaurant.new(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    rating: rand(0..5)
  )
  resto.save
end

puts "Done seeding! 🌱"