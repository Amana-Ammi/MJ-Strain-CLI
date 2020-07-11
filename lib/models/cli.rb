
class CLI 
    attr_accessor :user_input, :api

    def initialize
        @api = StrainApi.new
    end

    def start
        @api.get_strain
        age_verification
        welcome
        hurry_up #not working
        #in a rush? here's a random strain?
        # Some kind of menu w/options for search by flavor, effects, or strain
        # Commands for user to continue in program and also exit when done
        # A thank you/goodbye message. Please be responsible
    end

    def user_input
        user_input = gets.chomp
    end 

    def age_verification
        # why do I need to press enter twice? b/c i had an elsif statement. fixed
        puts ""
        puts "Before we get started, please enter your age below."
            if user_input.to_i >= 21
                puts "          ~~~ Congratulations! You were born just in time to use this application!! ~~~"
                puts ""
            else
                puts "Looks like you're too young to participate. Please come back when you're of legal age! :)"
                puts ""
                exit_program
            # else
            #     puts ""
            #     puts "Invalid input. Please try again using only numbers."
            #     puts ""
            #     age_verification
            end 
    end

    def hurry_up
        puts "In a rush? Press 'Y' to get a random strain. Or 'N' to continue."
        if user_input == 'Y'
           @api.get_strain
           puts ""
           puts "
           NAME: #{Strain.all[rand(0..1970)].name}
           
           EFFECTS: #{Strain.all[rand(0..1970)].effects}" #these results don't match 
        else
            puts "damn"
        end
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


end

