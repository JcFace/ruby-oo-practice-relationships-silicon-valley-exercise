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

    def sign_contract(jesse)
        FundingRound.new(self, jesse, "Series C", 19000000.5500)
    end 

    def num_funding_rounds
        FundingRound.all.select {|fr| fr.startup == self}.count
    end

    def total_funds
       startups = FundingRound.all.select {|fr| fr.startup == self}
       startups.map {|s| s.investment}.sum
    end

    def investors
        FundingRound.all.map {|fr| fr.venture_capitalist}.uniq
    end

    def big_investors
        investors = FundingRound.all.map {|fr| fr.venture_capitalist}
        investors.select {|i| i.total_worth > 1000000000}.uniq
    end
end
