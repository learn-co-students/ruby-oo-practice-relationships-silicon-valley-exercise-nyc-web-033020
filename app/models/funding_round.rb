class FundingRound

    attr_reader :startup, :venture_capitalist
    attr_accessor :type, :investment

    @@all = []

    def initialize(startup, venture_capitalist, type, investment)
        @startup = startup
        @venture_capitalist = venture_capitalist
        @type = type
        # @investment = investment
        investment >= 0 ? @investment = investment : @investment = 0
        FundingRound.all << self
    end

    def self.all
        @@all
    end

    # def investment=(investment)
    #     if investment.to_f < 0
    #         "Cannot have a negative investment amount." 
    #         investment = nil
    #     else
    #         @investment = investment
    #     end
    # end

end