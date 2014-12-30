print "Enter name: "
name = gets.chomp

if name == "Bob"
    puts "That's my name!"
else
    puts "Hi #{name}!"
end

print "Modify your name. Type 'uppercase' or 'reverse':"
answer = gets.chomp.downcase

case answer
    when "reverse"
        puts "this is your name backwards:"
        puts name.reverse
    when "uppercase"
        puts "this is you name in all uppercase"
        puts name.upcase
    when "both"
        puts name.reverse.upcase
    else
        puts "Ok, maybe later."
end