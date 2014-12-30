#assigning variable cars to number
cars = 100
#assign variable to how many spaces/people can fit in car
space_in_a_car = 4.0
#assigng number of drivers
drivers = 30
#assigning number of passengers
passengers = 90
#determine how many cars are NOT driven
cars_not_driven = cars - drivers
#assigning variable of number of drivers to number of cars
cars_driven = drivers
#total space avaialble in car pool
carpool_capacity = cars_driven * space_in_a_car
#average passengers per car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."