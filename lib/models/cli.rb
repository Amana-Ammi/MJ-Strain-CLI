
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
    end

    def user_input
        @input = gets.chomp
    end 

    def age_verification
        puts ""
        puts Rainbow("Before we get started, please enter your age below.").orange
        user_input
        if input.to_i > 121 || input.to_i < 21
            space
            puts "              Either your input is invalid or you're too young to participate." 
            puts "                Please try again or come back when you're of legal age! :)"
            space
            exit
        else 
            space
            puts Rainbow("           ~~~ Congratulations! You were born just in time to use this application!! ~~~").greenyellow
            space
        end
    end

    def one_random_strain
        i = rand(0..1970)
        puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
        space
        puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}"
        space
        puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{Strain.all[i].flavors.join(' - ')}"
        space
        puts "                          #{Rainbow("REFFECTS:").rebeccapurple} #{Strain.all[i].effects.join(' - ')}"
    end

    def menu
        space
        puts Rainbow("                                  MAIN MENU").green
        puts Rainbow("                    Please type '1-3' to make a selection. ").green
        puts Rainbow("-------------------------------------------------------------------------------").green
        puts "| 1. #{Rainbow("TYPE").rebeccapurple} -- You've done this before, huh?                                    |"
        puts "|                                                                             |"
        puts "| 2. #{Rainbow("FLAVOR").rebeccapurple} -- Got a taste for something specific?                            |"
        puts "|                                                                             |"
        puts "| 3. #{Rainbow("EFFECTS").rebeccapurple} -- Searching for a feeling?                                      |"
        puts Rainbow("-------------------------------------------------------------------------------").green
        options
    end

    def options
        user_input
        if input.to_i == 1
            race_menu
        elsif input.to_i == 2
            flavor_menu
        elsif input.to_i == 3
            effect_menu
        else
            space
            puts "INALID INPUT."
            puts "Please try again"
            menu
        end
    end

    def display_strain(strain)
        puts "                          #{Rainbow("NAME:").rebeccapurple} #{strain.name}"
        space
        puts "                          #{Rainbow("TYPE:").rebeccapurple} #{strain.race.capitalize}"
        space
        puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{strain.flavors.join(' - ')}"
        space
        puts "                         #{Rainbow("REFFECTS:").rebeccapurple} #{strain.effects.join(' - ')}"
        space
        continue
    end

    def race_menu
        space
        puts Rainbow("   Please choose a Strain Type below by typing in the corresponding number.").green
        puts Rainbow("-------------------------------------------------------------------------------").green
        puts "| 1. #{Rainbow("INDICA").rebeccapurple} -- Been going and going? I can help you slow down and relax.      |"
        puts "|                                                                             |"
        puts "| 2. #{Rainbow("SATIVA").rebeccapurple} -- Need a pick me up? Maybe a boost in productivity? I'm the one! |"
        puts "|                                                                             |"
        puts "| 3. #{Rainbow("HYBRID").rebeccapurple} -- Feeling neutral? Pick me!                                      |"
        puts Rainbow("-------------------------------------------------------------------------------").green
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
        else
            space
            puts "INALID INPUT."
            puts "Please try again"
            space
            race_menu
        end
    end

    def indica
        strain = Strain.indica_strains.sample
        display_strain(strain) 
    end

    def sativa
        strain = Strain.sativa_strains.sample
        display_strain(strain)
    end

    def hybrid
        strain = Strain.hybrid_strains.sample
        display_strain(strain)
    end

    def flavor_menu
        space
        puts Rainbow("      Please choose a Flavor below by typing in the corresponding number.").green
        puts Rainbow("-------------------------------------------------------------------------------").green
        puts "|                                 1. #{Rainbow("SWEET").rebeccapurple}                                    |"
        puts "|                                                                             |"
        puts "|                                 2. #{Rainbow("EARTHY ").rebeccapurple}                                  |"
        puts Rainbow("-------------------------------------------------------------------------------").green
        flavor_results
    end

    def flavor_results
        user_input
        if input.to_i == 1
            sweet
        elsif input.to_i == 2
            earthy
        else
            space
            puts "INALID INPUT."
            puts "Please try again"
            space
            flavor_menu
        end
    end

    def sweet
        strain = Strain.sweet_strains.sample
        display_strain(strain)
    end 

    def earthy
        strain = Strain.earthy_strains.sample
        display_strain(strain)
    end 

    def effect_menu
        space
        puts Rainbow("             Please choose an Effect you wish to experience below ").green
        puts Rainbow("                    by typing in the corresponding number").green
        puts Rainbow("-------------------------------------------------------------------------------").green
        puts "| 1. #{Rainbow("HAPPY").rebeccapurple} -- Maybe you've been a little down lately?                         |"
        puts "|                                                                             |"
        puts "| 2. #{Rainbow("CREATIVE").rebeccapurple} -- We all need a little inspiration sometimes.                  |"
        puts "|                                                                             |"
        puts "| 3. #{Rainbow("RELAXED").rebeccapurple} -- Slow Jams? Check. Bath bomb? Check. Here's the cherry ontop.  |"
        puts Rainbow("-------------------------------------------------------------------------------").green
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
        else
            space
            puts "INALID INPUT."
            puts "Please try again"
            space
            effect_menu
        end
    end

    def happy
        strain = Strain.happy_strains.sample
        display_strain(strain)            
    end

    def creative 
        strain = Strain.creative_strains.sample
        display_strain(strain)
    end

    def relaxed 
       strain = Strain.relaxed_strains.sample
       display_strain(strain) 
    end

    def hurry_up
        space
        puts Rainbow("             In a rush? Press 'Y' to get a random strain. Or 'M' to see the Main Menu.").rebeccapurple
        user_input
        if input.upcase == 'Y'
              space
           puts one_random_strain
           space
           continue
        elsif input.upcase == "M"
            menu
        else
            space
            puts "INALID INPUT."
            puts "Please try again"
            hurry_up
        end
    end

    def continue
        puts Rainbow("                                Enjoying the program?").skyblue
        puts Rainbow("             Press 'M' to return to the MAIN MENU. Or 'X' to exit the program.").cyan
        user_input
        if input.upcase == "M"
            menu
        elsif input.upcase == "X"
            goodbye
        else
            puts "INALID INPUT."
            puts "Please try again"
            continue
        end
    end

    def goodbye
        space
        puts Rainbow("                               Thank you for your visit!").orange
        space
        puts Rainbow("                            ~~ Please enjoy responsibly! ~~").orange
        space
        exit
    end

    def welcome
        puts Rainbow("
         W                                                                            W   
        WWW                                                                          WWW   
        WWW                                                                          WWW   
       WWWWW                                                                        WWWWW 
 W     WWWWW     W                                                            W     WWWWW     W 
 WWW   WWWWW   WWW         Welcome to what could be your best day ever!       WWW   WWWWW   WWW  
  WWW  WWWWW  WWW                                                              WWW  WWWWW  WWW 
   WWW  WWW  WWW                                                                WWW  WWW  WWW 
    WWW WWW WWW                                                                  WWW WWW WWW  
      WWWWWWW                                                                      WWWWWWW 
    WWWW | WWWW                                                                  WWWW | WWWW 
         |                                                                            | 
         |                                                                            | ").seagreen

    end

    def space
        puts ""
    end

end