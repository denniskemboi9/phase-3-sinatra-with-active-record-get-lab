# puts "🌱 Seeding data..."

# # run a loop 50 times
# 50.times do
#   # create a product with random data
#   review = Review.create(
#     star_rating: rand(0..10) # random number between 0 and 60
#     comment: Faker::Review.comment,
#     product_id: product.id # use the ID (primary key) of the game as the foreign key
#     user_id: user.id # use the ID (primary key) of the game as the foreign key
#   )
# end

# puts "🌱 Done seeding!"



# 

# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here
review1 = Review.create(star_rating: 5, comment: "Great product!", product_id: product1.id, user_id: user1.id)
review2 = Review.create(star_rating: 4, comment: "Good product!", product_id: product3.id, user_id: user2.id)
review3 = Review.create(star_rating: 5, comment: "Amazing product!", product_id: product2.id, user_id: user3.id)
review4 = Review.create(star_rating: 4, comment: "Nice product!", product_id: product5.id, user_id: user1.id)

puts "Seeding done!"