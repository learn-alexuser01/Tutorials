module SayHello
    def say_something
        puts "Something"
    end
    
    def say_hello
        puts "hello #{@name}"
    end
end

class Hello
    extend SayHello
    
    include SayHello
    def initialize(name)
        @name = name
    end
end

# hello = Hello.new("bob")

# hello.extend SayHello

# hello.say_hello

Hello.say_something