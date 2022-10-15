# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database'
Car.destroy_all
User.destroy_all

puts "Destroyed all records"

puts 'Creating users....'

user1 = User.create(email: "john.doe@anywhere.com", password: "123456")
user2 = User.create(email: "sponge.bob@bikinibottom.com", password: "123456")

puts "Created #{User.count} users"

puts 'Creating cars....'

car1 = Car.create(brand: "Lamborghini", model: "Huracan", color: "Yellow", year: "2022", price: "2500", user_id: user1.id)
car2 = Car.create(brand: "Mustang", model: "GT", color: "Dark Grey", year: "2018", price: "4000", user_id: user2.id)
car3 = Car.create(brand: "Mercedes", model: "GLA", color: "Light Grey", year: "2016", price: "3700", user_id: user1.id)
car4 = Car.create(brand: "Audi", model: "A4", color: "Red", year: "2021", price: "2000", user_id: user2.id)
car5 = Car.create(brand: "BMW", model: "X6", color: "Black", year: "2022", price: "4500", user_id: user1.id)

puts "Created #{Car.count} cars"

puts "***SEED DONE***"
