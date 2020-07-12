
class CLI 
    attr_accessor :input
    attr_reader :api

    def initialize
        @api = StrainApi.new
    end

    def start
        @api.get_strain
        age_verification
        welcome
        hurry_up 
        # menu
        options
        
        # Commands for user to continue in program and also exit when done
        # A thank you/goodbye message. Please be responsible
    end

    def user_input
        @input = gets.chomp
    end 

    def age_verification
        puts ""
        puts "Before we get started, please enter your age below."
        user_input
        if input.to_i >= 21
            puts "          ~~~ Congratulations! You were born just in time to use this application!! ~~~"
            space
        elsif input.to_i < 21
            puts "
            Either your input is inavlid or you're too young to participate. 
                Please try again or come back when you're of legal age! :)"
            space
            exit
        end
    end

    def one_random_strain
        @api.get_strain
        i = rand(0..1970)
        puts "                          NAME: #{Strain.all[i].name}"
        space
        puts "                          RACE: #{Strain.all[i].race}"
        space
        puts "                          FLAVORS: #{Strain.all[i].flavors}"
        space
        puts "                          EFFECTS: #{Strain.all[i].effects}"
    end

    def menu
        space
        puts "                                  MAIN MENU"
        puts "                    Please type '1-3' to make a selection. "
        puts "-------------------------------------------------------------------------------"
        puts "| 1. TYPE -- You've done this before, huh?                                    |"
        puts "|                                                                             |"
        puts "| 2. FLAVOR -- Got a taste for something specific?                            |"
        puts "|                                                                             |"
        puts "| 3. EFFECTS -- Searching for a feeling?                                      |"
        puts "-------------------------------------------------------------------------------"
    
    end

    def options
        user_input
        if input.to_i == 1
            race_menu
        elsif input.to_i == 2
            flavor_menu
        elsif input.to_i == 3
            effect_menu
        end
    end

    def race_menu
        space
        puts "   Please choose a Strain Type below by typing in the corresponding number."
        puts "-------------------------------------------------------------------------------"
        puts "| 1. INDICA -- Been going and going? I can help you slow down and relax.      |"
        puts "|                                                                             |"
        puts "| 2. SATIVA -- Need a pick me up? Maybe a boost in productivity? I'm the one! |"
        puts "|                                                                             |"
        puts "| 3. HYBRID -- Feeling neutral? Pick me!                                      |"
        puts "-------------------------------------------------------------------------------"
        race_results
    end

    def race_results
        user_input
        if input.to_i == 1
            indica
        elsif input.to_i == 2
            sativa
        elsif input.to_i == 3
            hybrid
        end
    end

    def indica
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].race == "indica"
            puts "                          NAME: #{Strain.all[i].name}"
            space
            puts "                          FLAVORS: #{Strain.all[i].flavors}"
            space
            puts "                          EFFECTS: #{Strain.all[i].effects}" 
            space
        end        
    end

    def sativa
        @api.get_strain
        i = rand(0..1970)
            if Strain.all[i].race == "sativa"
                puts "                          NAME: #{Strain.all[i].name}"
                space
                puts "                          FLAVORS: #{Strain.all[i].flavors}"
                space
                puts "                          EFFECTS: #{Strain.all[i].effects}" 
                space
            end
    end

    def hybrid
        @api.get_strain
        i = rand(0..1970)
            if Strain.all[i].race == "hybrid"
                puts "                          NAME: #{Strain.all[i].name}"
                space
                puts "                          FLAVORS: #{Strain.all[i].flavors}"
                space
                puts "                          EFFECTS: #{Strain.all[i].effects}" 
            end
    end

    def flavor_menu
        space
        puts "      Please choose a Flavor below by typing in the corresponding number."
        puts "-------------------------------------------------------------------------------"
        puts "|                                 1. SWEET                                    |"
        puts "|                                                                             |"
        puts "|                                 2. EARTHY                                   |"
        puts "-------------------------------------------------------------------------------"
        flavor_results
    end

    def flavor_results
        user_input
        if input.to_i == 1
            sweet
        elsif input.to_i == 2
            earthy
        end
    end

    def sweet
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].flavors == "sweet"
            puts "                          NAME: #{Strain.all[i].name}"
            space
            puts "                          RACE: #{Strain.all[i].race}"
            space
            puts "                          EFFECTS: #{Strain.all[i].effects}" 
            space
        end
    end 

    def earthy
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].flavors == "Earthy"
            puts "                          NAME: #{Strain.all[i].name}"
            space
            puts "                          RACE: #{Strain.all[i].race}"
            space
            puts "                          EFFECTS: #{Strain.all[i].effects}" 
            space
        end
    end 

    def effect_menu
        space
        puts "             Please choose an Effect you wish to experience below "
        puts "                    by typing in the corresponding number"
        puts "-------------------------------------------------------------------------------"
        puts "| 1. HAPPY -- Maybe you've been a little down lately?                         |"
        puts "|                                                                             |"
        puts "| 2. CREATIVE -- We all need a little inspiration sometimes.                  |"
        puts "|                                                                             |"
        puts "| 3. RELAXED -- Slow Jams? Check. Bath bomb? Check. Here's the cherry ontop.  |"
        puts "-------------------------------------------------------------------------------"
        effect_results
    end

    def effect_results
        user_input
        if input.to_i == 1
            happy 
        elsif input.to_i == 2
            creative
        elsif input.to_i == 3
            relaxed
        end
    end

    def happy
        @api.get_strain
        i = rand(0..1970)
            if Strain.all[i].effects == "happy"
                puts "                          NAME: #{Strain.all[i].name}"
                space
                puts "                          FLAVORS: #{Strain.all[i].flavors}"
                space
                puts "                          EFFECTS: #{Strain.all[i].effects}" 
                space
            end  
    end

    def creative 
        @api.get_strain
        i = rand(0..1970)
            if Strain.all[i].effects == "creative"
                puts "                          NAME: #{Strain.all[i].name}"
                space
                puts "                          FLAVORS: #{Strain.all[i].flavors}"
                space
                puts "                          EFFECTS: #{Strain.all[i].effects}" 
                space
            end  
    end

    def relaxed 
        @api.get_strain
        i = rand(0..1970)
            if Strain.all[i].effects == "relaxed"
                puts "                          NAME: #{Strain.all[i].name}"
                space
                puts "                          FLAVORS: #{Strain.all[i].flavors}"
                space
                puts "                          EFFECTS: #{Strain.all[i].effects}" 
                space
            end  
    end


    def hurry_up
        puts ""
        puts "In a rush? Press 'Y' to get a random strain. Or 'M' to see the Main Menu."
        user_input
        if input.upcase == 'Y'
           @api.get_strain
           space
           puts one_random_strain
           space
           goodbye
        elsif input.upcase == "M"
            menu
        else
            puts "INALID INPUT."
            puts "Please try again"
            hurry_up
        end
    end

    def goodbye
        space
        puts "                                  Thank you for your visit!"
        space
        puts "                                ~~ Please enjoy responsibly! ~~"
        space
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

    def space
        puts ""
    end

end



