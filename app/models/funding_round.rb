class FundingRound
    attr_reader :startup, :venture_capitalist, :type, :investment
    @@all = []
    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        #The diff types Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C
        @type = type
        @investment = investment.to_f
        FundingRound.all << self
    end

    def investment=(num)
        (num > 0)? investment = num : nil
    end

    def self.all
        @@all
    end


end
