class VentureCapitalist

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

end
