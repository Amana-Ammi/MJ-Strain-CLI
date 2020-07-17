
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
        @api.get_strain
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
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].race = "indica"
            puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
            space
            puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}" 
            space
            puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{Strain.all[i].flavors.join(' - ')}"   
            space
            puts "                          #{Rainbow("EFFECTS:").rebeccapurple} #{Strain.all[i].effects.join(' - ')}" 
            space  
        end   
        continue 
    end

    def sativa
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].race = "sativa"
            puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
            space
            puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}" 
            space
            puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{Strain.all[i].flavors.join(' - ')}"
            space
            puts "                          #{Rainbow("EFFECTS:").rebeccapurple} #{Strain.all[i].effects.join(' - ')}" 
            space
        end
        continue
    end

    def hybrid
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].race = "hybrid"
            puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
            space
            puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}"
            space
            puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{Strain.all[i].flavors.join(' - ')}"
            space
            puts "                          #{Rainbow("EFFECTS:").rebeccapurple} #{Strain.all[i].effects.join(' - ')}" 
        end
        continue
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
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].flavors = "sweet"
            puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
            space
            puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}"
            space
            puts "                          #{Rainbow("EFFECTS:").rebeccapurple} #{Strain.all[i].effects.join(' - ')}" 
            space
        end
        continue
    end 

    def earthy
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].flavors = "Earthy"
            puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
            space
            puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}"
            space
            puts "                          #{Rainbow("EFFECTS:").rebeccapurple} #{Strain.all[i].effects.join(' - ')}" 
            space
        end
        continue
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
        @api.get_strain
        i = rand(0..1970)
            if Strain.all[i].effects = "happy"
                puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
                space
                puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}" 
                space
                puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{Strain.all[i].flavors.join(' - ')}"
                space
            end  
        continue
    end

    def creative 
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].effects = "creative"
            puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
            space
            puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}"
            space
            puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{Strain.all[i].flavors.join(' - ')}"
            space
        end  
        continue
    end

    def relaxed 
        @api.get_strain
        i = rand(0..1970)
        if Strain.all[i].effects = "relaxed"
            puts "                          #{Rainbow("NAME:").rebeccapurple} #{Strain.all[i].name}"
            space
            puts "                          #{Rainbow("TYPE:").rebeccapurple} #{Strain.all[i].race.capitalize}" 
            space
            puts "                          #{Rainbow("FLAVORS:").rebeccapurple} #{Strain.all[i].flavors.join(' - ')}"
            space
        end
        continue  
    end

    def hurry_up
        space
        puts Rainbow("             In a rush? Press 'Y' to get a random strain. Or 'M' to see the Main Menu.").rebeccapurple
        user_input
        if input.upcase == 'Y'
           @api.get_strain
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



