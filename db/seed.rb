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
review1 = Review.create(user: user1, product: product1, star_rating: 4, comment: "Great stapler!")
review2 = Review.create(user: user2, product: product1, star_rating: 3, comment: "Decent quality.")
review3 = Review.create(user: user3, product: product2, star_rating: 5, comment: "Love this whiteboard!")
review4 = Review.create(user: user1, product: product3, star_rating: 4, comment: "Good markers.")
review5 = Review.create(user: user2, product: product3, star_rating: 2, comment: "Markers dried out quickly.")

puts "Seeding done!"
