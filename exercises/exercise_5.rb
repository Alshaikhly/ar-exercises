require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_revenue = Store.sum("annual_revenue")
@average_revenue = Store.average("annual_revenue")

@stores_1mil = Store.where(annual_revenue: 1000000..Float::INFINITY).count

puts @stores_1mil