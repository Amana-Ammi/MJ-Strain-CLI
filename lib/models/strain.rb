class Strain 
    
    attr_accessor :name, :effects, :flavors, :race

    @@all = []
    @@sweet_strains = []

    def initialize (name, race, flavors, effects)
        @name = name
        @race = race
        @flavors = flavors
        @effects = effects
        @@all << self
    end

    def self.all
        @@all
    end
  
    def self.print_test
        all.each {|strain| puts strain}
    end

    def self.sweet_strains
        @@all.select do |strain|
            strain.flavors.include?("Sweet")  
        end
    end
    
    def self.earthy_strains
        @@all.select do |strain|
            strain.flavors.include?("Earthy")  
        end
    end

    def self.indica_strains
        @@all.select do |strain|
            strain.race.include?("indica") 
        end 
    end

    def self.sativa_strains
        @@all.select do |strain|
            strain.race.include?("sativa") 
        end 
    end

    def self.hybrid_strains
        @@all.select do |strain|
            strain.race.include?("hybrid") 
        end 
    end

    def self.happy_strains
        @@all.select do |strain|
            strain.effects.include?("Happy") 
        end
    end

    def self.creative_strains
        @@all.select do |strain|
            strain.effects.include?("Creative") 
        end
    end

    def self.relaxed_strains
        @@all.select do |strain|
            strain.effects.include?("Relaxed")
        end 
    end
    
end