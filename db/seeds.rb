# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database'
Booking.destroy_all
Review.destroy_all
Car.destroy_all
User.destroy_all

puts "Destroyed all records"

puts 'Creating users....'

user1 = User.create(email: "john.doe@anywhere.com", password: "123456")
user2 = User.create(email: "sponge.bob@bikinibottom.com", password: "123456")

puts "Created #{User.count} users"

puts 'Creating cars....'

cars = [
  {
    brand: "Lamborghini",
    model: "Huracan",
    color: "Yellow",
    year: 2022,
    price: 14_300,
    images_url: "https://images.unsplash.com/photo-1519245659620-e859806a8d3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
    user_id: user1.id
  },
  {
    brand: "Mustang",
    model: "GT",
    color: "Dark Grey",
    year: 2018,
    price: 10_500,
    images_url: "https://images.unsplash.com/photo-1612544448445-b8232cff3b6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
    user_id: user1.id
  }
]

cars.each do |car|
  Car.create!(brand: car[:brand],model: car[:model], color: car[:color], year: car[:year], price: car[:price], images_url: car[:images_url], user_id: car[:user_id] )
end

# car1 = Car.create(brand: "Lamborghini", model: "Huracan", color: "Yellow", year: "2022", price: "14,300",
#                   images_url: "https://images.unsplash.com/photo-1519245659620-e859806a8d3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
#                   user_id: user1.id)
# car2 = Car.create(brand: "Mustang", model: "GT", color: "Dark Grey", year: "2018", price: "10,500",
#                   images_url: "https://images.unsplash.com/photo-1612544448445-b8232cff3b6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
#                   user_id: user2.id)
# car3 = Car.create(brand: "Mercedes", model: "GLA", color: "Light Grey", year: "2016", price: "11,500",
#                   images_url: "https://images.unsplash.com/photo-1546518071-fddcdda7580a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
#                   user_id: user1.id)
# car4 = Car.create(brand: "Audi", model: "A4", color: "Red", year: "2021", price: "9,350",
#                   images_url: "https://images.unsplash.com/photo-1555652736-e92021d28a10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
#                   user_id: user2.id)
# car5 = Car.create(brand: "BMW", model: "Series 6", color: "Black", year: "2022", price: "9,700",
#                   images_url: "https://images.unsplash.com/photo-1523983388277-336a66bf9bcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
#                   user_id: user1.id)
# car6 = Car.create(brand: "Porsche", model: "911 Turbo S", color: "Light Grey", year: "2016", price: "15,000",
#                   images_url: "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#                   user_id: user1.id)
# car7 = Car.create(brand: "Chevrolet", model: "Corvette 2022", color: "Blue", year: "2021", price: "13,500",
#                   images_url: "https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#                   user_id: user2.id)
# car5 = Car.create(brand: "Ferrari", model: "Scuderia Spider", color: "Yellow", year: "2022", price: "15,800",
#                   images_url: "https://images.unsplash.com/photo-1503736334956-4c8f8e92946d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
#                   user_id: user1.id)
# car4 = Car.create(brand: "Audi", model: "A4", color: "Red", year: "2021", price: "9,350",
#                     images_url: "https://images.unsplash.com/photo-1555652736-e92021d28a10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
#                     user_id: user2.id)
# car5 = Car.create(brand: "BMW", model: "Series 6", color: "Black", year: "2022", price: "9,700",
#                     images_url: "https://images.unsplash.com/photo-1523983388277-336a66bf9bcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
#                     user_id: user1.id)
# car3 = Car.create(brand: "Porsche", model: "911 Turbo S", color: "Light Grey", year: "2016", price: "15,000",
#                     images_url: "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#                     user_id: user1.id)
# car4 = Car.create(brand: "Chevrolet", model: "Corvette 2022", color: "Blue", year: "2021", price: "13,500",
#                     images_url: "https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
#                     user_id: user2.id)
# car5 = Car.create(brand: "Ferrari", model: "Scuderia Spider", color: "Yellow", year: "2022", price: "15,800",
#                     images_url: "https://images.unsplash.com/photo-1503736334956-4c8f8e92946d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
#                     user_id: user1.id)

puts "Created #{Car.count} cars"

puts "***SEED DONE***"
