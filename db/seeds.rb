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
    user_id: user2.id
  },
  {
    brand: "Mercedes",
    model: "GLA",
    color: "Light Grey",
    year: 2016,
    price: 11_500,
    images_url: "https://images.unsplash.com/photo-1546518071-fddcdda7580a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
    user_id: user1.id
  },
  {
    brand: "Audi",
    model: "A4",
    color: "Red",
    year: 2021,
    price: 11_500,
    images_url: "https://images.unsplash.com/photo-1555652736-e92021d28a10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    user_id: user2.id
  },
  {
    brand: "BMW",
    model: "Series 6",
    color: "Black",
    year: 2022,
    price: 9_500,
    images_url: "https://images.unsplash.com/photo-1555652736-e92021d28a10?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
    user_id: user1.id
  },
  {
    brand: "Porsche",
    model: "911 Turbo S",
    color: "Light Grey",
    year: 2016,
    price: 15_000,
    images_url: "https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    user_id: user2.id
  },
  {
    brand: "Chevrolet",
    model: "Corvette 2022",
    color: "Blue",
    year: 2021,
    price: 15_500,
    images_url: "https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    user_id: user1.id
  },
  {
    brand: "Ferrari",
    model: "Scuderia Spider",
    color: "Yellow",
    year: 2021,
    price: 15_500,
    images_url: "https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    user_id: user1.id
  },
  {
    brand: "Mustang",
    model: "GT 500",
    color: "Orange",
    year: 2021,
    price: 14_500,
    images_url: "https://images.unsplash.com/photo-1581650107963-3e8c1f48241b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
    user_id: user2.id
  },
  {
    brand: "Audi",
    model: "Q3",
    color: "White",
    year: 2021,
    price: 12_500,
    images_url: "https://images.unsplash.com/photo-1517524008697-84bbe3c3fd98?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
    user_id: user1.id
  },
  {
    brand: "Mercedes",
    model: "AMG GT Coupé",
    color: "Yellow",
    year: 2021,
    price: 15_500,
    images_url: "https://images.unsplash.com/photo-1615228939096-9ead6c74008e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=415&q=80",
    user_id: user2.id
  },
  {
    brand: "BMW",
    model: "M3",
    color: "Dark Orange",
    year: 2022,
    price: 17_500,
    images_url: "https://images.unsplash.com/photo-1617531653332-bd46c24f2068?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1215&q=80",
    user_id: user1.id
  }
]

cars.each do |car|
  Car.create!(brand: car[:brand],model: car[:model], color: car[:color], year: car[:year], price: car[:price], images_url: car[:images_url], user_id: car[:user_id] )
end

puts "Created #{Car.count} cars"


puts 'Creating reviews....'

reviews = [
  {
    feedback: "Super nice online platform, easy-to use to rent a car. Highly recommended!",
    car_id: Car.all.sample.id,
    user_id: user1.id
  },
  {
    feedback: "Great car, very neat and clean. I highly recommend to anyone!",
    car_id: Car.all.sample.id,
    user_id: user2.id
  },
  {
    feedback: "One of the best places online to rent a luxury car. Great range of cars available!",
    car_id: Car.all.sample.id,
    user_id: user1.id
  },
  {
    feedback: "I rented this car a few weeks ago and I really loved it! Five stars!.",
    car_id: Car.all.sample.id,
    user_id: user1.id
  },
  {
    feedback: "The car I rented wasn't too clean, really not impressed..",
    car_id: Car.all.sample.id,
    user_id: user2.id
  },
  {
    feedback: "We rented this car for two weeks, great performance and very economic!",
    car_id: Car.all.sample.id,
    user_id: user1.id
  }
]

reviews.each do |review|
  Review.create!(feedback: review[:feedback], car_id: review[:car_id], user_id: review[:user_id])
end


puts "Created #{Review.count} reviews"


puts 'Creating bookings....'

bookings = [
  {
    start_date: "2022-03-11",
    end_date: "2022-03-26",
    car_id: Car.all.sample.id,
    user_id: user1.id
  },
  {
    start_date: "2022-05-08",
    end_date: "2022-05-22",
    car_id: Car.all.sample.id,
    user_id: user2.id
  },
  {
    start_date: "2022-01-11",
    end_date: "2022-01-15",
    car_id: Car.all.sample.id,
    user_id: user1.id
  },
  {
    start_date: "2022-07-20",
    end_date: "2022-07-25",
    car_id: Car.all.sample.id,
    user_id: user2.id
  },
  {
    start_date: "2022-09-12",
    end_date: "2022-09-16",
    car_id: Car.all.sample.id,
    user_id: user1.id
  },
  {
    start_date: "2022-02-06",
    end_date: "2022-02-10",
    car_id: Car.all.sample.id,
    user_id: user1.id
  }
]

bookings.each do |booking|
  Booking.create!(start_date: booking[:start_date], end_date: booking[:end_date], car_id: booking[:car_id], user_id: booking[:user_id])
end


puts "Created #{Booking.count} bookings"

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
