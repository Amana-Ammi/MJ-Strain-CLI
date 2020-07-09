require 'pry'

class CLI 
    attr_accessor :age

    def start
        self.welcome
        # Age verification
        # Populate the random flavor of the moment
        # Some kind of menu w/options for search by flavor, effects, or strain
        # Commands for user to continue in program and also exit when done
        # A thank you/goodbye message
    end

    def welcome
        "Hello, and Welcome to The Strain You Never Knew You Wanted to Try!"
    end

    def age_verification(age)
        puts "Before we get stared, please enter your age below."
        age = gets.chomp

        if age >= 21
            puts "Congratulations! You were born just in time to use this application!!"
        else 
            puts "Looks like you're too young to participate. Please come back in a couple years!"
        end 
    end
 


end

x =CLI.new
x.start