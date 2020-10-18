class Startup

    attr_reader :founder
    attr_accessor :name, :domain

    @@all = []

    def self.all
        @@all
    end

    def self.find_by_founder(founder)
        self.all.select {|s| s.founder == founder}.first
    end

    def self.domains
        self.all.map do |s|
            s.domain
        end
    end

    def initialize(name, founder, domain)
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def pivot(domain, name)
        self.name = name
        self.domain = domain
    end

end
