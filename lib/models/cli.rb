# require 'pry'
# require_relative "../models/strain.rb"
# require_relative "../services/api.rb"

class CLI 
    attr_accessor :age, :user_input

    def start
        age_verification
        welcome
        how_to_exit # should probably combine with my continue method
        continue
        hurry_up #not working
        goodbye
        
        #in a rush? here's a random strain?
        # Some kind of menu w/options for search by flavor, effects, or strain
        # Commands for user to continue in program and also exit when done
        # A thank you/goodbye message. Please endulge responsibly
       
    end

    def user_input
        user_input = gets.chomp
    end 

    def goodbye
        puts ""
        puts "                                  Thank you for your visit!"
        puts ""
        puts "                                ~~ Please enjoy responsibly! ~~"
        puts ""
        exit_program
    end

    def how_to_exit
        puts ""
        puts "                  If you'd like to exit the program, please type 'Q' at anytime."
        puts ""
        if user_input == "Q"
            goodbye
            exit_program
        end
    end

    def continue
        puts "                              If you'd like to continue, type 'C'."
        if user_input == "C"
        end
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
        # why do I need to press enter twice?
        puts ""
        puts "Before we get started, please enter your age below."
            if user_input.to_i >= 21
                puts "         ~~~ Congratulations! You were born just in time to use this application!! ~~~"
                puts ""
            elsif user_input.to_i < 21
                puts "Looks like you're too young to participate. Please come back when you're of legal age! :)"
                puts ""
                exit_program
            # elsif user_input == user_input
            #     puts ""
            #     puts "Invalid input. Please try again using only numbers."
            #     puts ""
            #     age_verification
            end 
    end

    def main_menu
    end

    def hurry_up
        puts "In a rush? Press 'y' to get a random strain."
        if user_input == 'Y'
           puts rush_strain
        end
    #     binding.pry 
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

#   binding.pry
end

x = CLI.new
x.start



# def age_verification
#     puts "Before we get stared, please enter your age below."
#     user_input = gets.chomp

#     if user_input.to_i >= 21
#         "Congratulations! You were born just in time to use this application!!"
#     else 
#         puts "Looks like you're too young to participate. Please come back when you're of legal age! :)"
#         exit_program