def header(&block)
    puts "This is our header"
    block.call

    puts "This is the footer"
rescue
    puts "This is where we would rescue an error"
ensure
    puts "I am in the ensure block"
end

header do
    puts "this is the body of the block"
    raise "This is an error"
    
    end