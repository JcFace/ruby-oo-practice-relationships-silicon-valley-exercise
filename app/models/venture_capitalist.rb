class VentureCapitalist

    attr_reader :name
    attr_accessor :total_worth

    @@all = []

    def self.all
        @@all
    end

    def self.tres_commas_club
        self.all.select {|c| c.total_worth > 1000000000}
    end

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end 

end
