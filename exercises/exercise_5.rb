require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total_annual_revenue = Store.sum("annual_revenue")
average_annual_revenue = Store.average("annual_revenue").to_i
num_of_stores_more_than_1M = Store.where("annual_revenue > ?", 1000000).size

p total_annual_revenue
p average_annual_revenue
p num_of_stores_more_than_1M