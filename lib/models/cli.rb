
class CLI 
    attr_accessor :user_input
    attr_reader :api

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
                puts "
                Either your input is inavlid or you're too young to participate. 
                   Please try again or come back when you're of legal age! :)"
                puts ""
                exit_program
            end 
    end

    def get_random_strain
        # random_strain = 
        Strain.all[rand(0..1970)].each do |hash|  
            hash[0],hash[1]["flavors"],hash[1]["effects"]["positive"]
        end  
    binding.pry
    end

    def hurry_up
        puts "In a rush? Press 'Y' to get a random strain. Or 'N' to continue."
        if user_input == 'Y'
           @api.get_strain
           puts ""
           puts "
            
            NAME: #{Strain.all[rand(0..1970)].name}
           
            EFFECTS: #{Strain.all[rand(0..1970)].effects}" #these results don't match 
           puts ""
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