print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."


print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me all your money: "
money = gets.chomp.to_f
return_money = money * 0.1

print "For the ride home, here is #{return_money}"
