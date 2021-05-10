# CRUD in ActiveRecord

# Create
  resto = Restaurant.new(name: "Mango Store", address: "I don't know", rating: 5)
  resto.save
  # resto = Restaurant.create(name: "Mango Store", address: "I don't know", rating: 5)

# Read
  # Read all
    restaurants = Restaurant.all # Returns an array of instances
  # Read one
    some_resto = Restaurant.find(2) # finding by Id
    another_resto = Restaurant.find_by(name: "Sir Hummus")
    # another_resto = Restaurant.find_by_name("Sir Hummus")

# Update
  resto.address = "New address"
  resto.save

# Destroy
  resto.destroy


# Advanced queries
Restaurant.count
Restaurant.where(rating: 0)
Restaurant.where("name LIKE ?", "%Hummus%")
Restaurant.order(created_at: :asc)
