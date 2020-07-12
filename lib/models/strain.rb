class Strain 
    
    attr_accessor :name, :effects, :flavors, :race

    @@all = []

    def initialize(name, race, flavors, effects)
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

end