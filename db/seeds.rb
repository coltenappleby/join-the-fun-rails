# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first

Passenger.destroy_all
Taxi.destroy_all
Ride.destroy_all

1..50.times do
    Passenger.create()
end
1..50.times do 
    Taxi.create()
end
1..100.times do 
    Ride.create(passenger: Passenger.all[rand(1..50)], taxi: Taxi.all[rand(1..50)])
end

