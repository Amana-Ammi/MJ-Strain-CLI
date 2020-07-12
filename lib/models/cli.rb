
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
        hurry_up 
        menu
        
        
        # Some kind of menu w/options for search by flavor, effects, or strain
        # Commands for user to continue in program and also exit when done
        # A thank you/goodbye message. Please be responsible
    end

    def user_input
        user_input = gets.chomp
    end 

    def age_verification
        puts ""
        puts "Before we get started, please enter your age below."
            if user_input.to_i >= 21
                puts "          ~~~ Congratulations! You were born just in time to use this application!! ~~~"
                puts ""
            elsif user_input.to_i < 21
                puts "
                Either your input is inavlid or you're too young to participate. 
                   Please try again or come back when you're of legal age! :)"
                puts ""
                exit
            # else
            #     puts "INVALID INPUT!! Please try again."
            #     age_verification
            end 
    end

    def one_random_strain
        @api.get_strain
        i = rand(0..1970)
        puts "NAME: #{Strain.all[i].name}"
        puts ""
        puts "RACE: #{Strain.all[i].race}"
        puts ""
        puts "FLAVORS: #{Strain.all[i].flavors}"
        puts ""
        puts "EFFECTS: #{Strain.all[i].effects}"
    end

    def menu
        puts "-------------------------------------------------------------------------------"
        puts "| 1. RACE -- You've done this before, huh?                                    |"
        puts "|                                                                             |"
        puts "| 2. FLAVOR -- What's you're palette yearning for?                            |"
        puts "|                                                                             |"
        puts "| 3. EFFECTS -- Searching for a feeling? Or maybe you want to relieve one?    |"
        puts "-------------------------------------------------------------------------------"
        options
    end

    def race_menu
        puts "-------------------------------------------------------------------------------"
        puts "| 1. INDICA -- Been going and going? I can help you slow down and relax.      |"
        puts "|                                                                             |"
        puts "| 2. SATIVA -- Need a pick me up? Maybe a boost in productivity? I'm the one! |"
        puts "|                                                                             |"
        puts "| 3. HYBRID -- Feeling neutral? Pick me!                                      |"
        puts "-------------------------------------------------------------------------------"
    end

    def flavor_menu
        puts "-------------------------------------------------------------------------------"
        puts "| 1. SWWEET --      |"
        puts "|                                                                             |"
        puts "| 2. EARTHY --  |"
        puts "|                                                                             |"
        puts "| 3. HYBRID --                                     |"
        puts "-------------------------------------------------------------------------------"
    end

    def pos_effect_menu
    end

    def effect_med_menu
    end
    
    def options
        if user_input.to_i == 1
            puts race_menu
        elsif user_input.to_i == 2
            puts flavor_menu
        elsif user_input.to_i == 3
            puts pos_effect_menu
        end
    end

    def by_race
        puts "Please choose a Strain Type below by typing in the corresponding number."
        puts race_menu
    end

    def by_flavor
        puts "Please choose a Flavor below by typing in the corresponding number."
        #need user input.
        #need to validate user input

    end


    def hurry_up
        puts ""
        puts "In a rush? Press 'Y' to get a random strain. Or 'N' to continue."
        if user_input == 'Y'
           @api.get_strain
           puts ""
           puts one_random_strain
           puts ""
           goodbye
        end
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

    def goodbye
        puts ""
        puts "                                  Thank you for your visit!"
        puts ""
        puts "                                ~~ Please enjoy responsibly! ~~"
        puts ""
        exit
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



