# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Passenger.destroy_all
Driver.destroy_all
Ride.destroy_all

10.times do 
    Passenger.create(email: Faker::Internet.email, password: Faker::Alphanumeric.alphanumeric(number: 10), name: Faker::Name.name, phone_number: Faker::Number.number(digits: 10))

    Driver.create(name: Faker::Name.name, phone_number: Faker::Number.number(digits: 10), vehicle: Faker::Vehicle.make_and_model, language: Faker::Nation.language, rating: Faker::Number.between(from: 1, to: 5))

    Ride.create(location: Faker::Address.full_address, destination: Faker::Address.full_address, passenger_id: Passenger.all.sample.id, driver_id: Driver.all.sample.id)
end