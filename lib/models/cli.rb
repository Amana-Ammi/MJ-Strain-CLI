require 'pry'

class CLI 
    attr_accessor :age, :user_input

    def start
        age_verification
        welcome
        #in a rush? here's a random strain?
        # Some kind of menu w/options for search by flavor, effects, or strain
        # Commands for user to continue in program and also exit when done
        # A thank you/goodbye message. Please endulge responsibly
    end

    def welcome
        puts "
         W                                                                            W   
        WWW                                                                          WWW   
        WWW                                                                          WWW   
       WWWWW                                                                        WWWWW 
 W     WWWWW     W                                                            W     WWWWW     W 
 WWW   WWWWW   WWW    Hello!! Welcome to what could be your best day ever!    WWW   WWWWW   WWW  
  WWW  WWWWW  WWW                                                              WWW  WWWWW  WWW 
   WWW  WWW  WWW                                                                WWW  WWW  WWW 
    WWW WWW WWW                                                                  WWW WWW WWW  
      WWWWWWW                                                                      WWWWWWW 
    WWWW | WWWW                                                                  WWWW | WWWW 
         |                                                                            | 
         |                                                                            | "
    end

    def goodbye
    end

    def exit_program
        exit 
    end

    def user_exit
        if user_input == "exit"
            exit
        end
    end

    def age_verification
        puts "Before we get stared, please enter your age below."
        user_input = gets.chomp
  
        if user_input.to_i >= 21
            "Congratulations! You were born just in time to use this application!!"
        else 
            puts "Looks like you're too young to participate. Please come back when you're of legal age! :)"
            exit_program
        end 
    end
  binding.pry
end

x = CLI.new
x.start