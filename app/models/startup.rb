class Startup

    attr_reader :founder
    attr_accessor :name, :domain

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end


end
