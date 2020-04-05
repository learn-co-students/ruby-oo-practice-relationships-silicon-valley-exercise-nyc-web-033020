class FundingRound
    attr_reader :startup, :venture_capitalist, :investment
    attr_accessor :type
    @@all = []
    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist =venture_capitalist
        @type =type
        @investment = investment
        @@all << self
    end
    def investment=(number)
        if number < 0
            return "Your number cannot be under 0."
        else
            return @investment = number * 1.0
        end
    end
    def startups(type)
        FundingRound.all.select do |key|
            if key.type == type
                return key.startup
            end
        end
    end

    def venture_capitalists(type)
        FundingRound.all.select do |key|
            if key.type == type
                return key.venture_capitalist
            end
        end
    end

    def self.all
        @@all
    end
end
