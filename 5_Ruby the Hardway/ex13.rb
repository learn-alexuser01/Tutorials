first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"
puts "Give me one more variable: "
fourth = $stdin.gets.chomp
puts "Your fourth variables is: #{fourth}"
