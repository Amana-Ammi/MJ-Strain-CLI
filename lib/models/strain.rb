class Strain 
    
    attr_accessor :name, :effects, :flavors

    @@all = []

    def initialize(name, flavors, effects)
        @name = name
        @flavors = flavors
        @effects = effects
        @@all << self
    end

    def self.all
        @@all
    end

    def self.random_strains
        self.all.sample(3)
    end

    def self.print_test
        all.each {|strain| puts strain} 
        #prints the original array as well..that doesn't look too pretty
    end

end