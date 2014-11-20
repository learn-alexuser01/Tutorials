=begin
Write a small Ruby program that asks you what your name is. Have the program print out the number of characters in your name. Also have the program print out a message if your name is longer than 25 characters.
=end

print "What is your name?"
name = gets.chomp
puts "Hello #{name}, there are #{name.length} letters in your name"

if name.length > 25
    puts "Wow, what a long name"
    end

    
    
    
    
    
    