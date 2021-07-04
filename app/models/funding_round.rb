class FundingRound
    attr_reader :type, :startup, :venture_capitalist, :investment
    @@all = []
    def initialize(type, startup, venture_capitalist, investment)
        @type =type
        @startup = startup
        @venture_capitalist =venture_capitalist
        @investment = investment
        @@all << self
    end
    def self.all
        @@all
    end
    

end
