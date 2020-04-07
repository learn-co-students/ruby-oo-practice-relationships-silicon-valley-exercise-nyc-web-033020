require 'pry'
class VentureCapitalist
    attr_reader :name, :total_worth
    @@all = []
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end
    def self.all
        @@all
    end
    def self.tres_commas_club
        VentureCapitalist.all.select {|key| key.total_worth > 1000000000}
    end
    def offer_contract(startup, type, investment)
        FundingRound.new(type, startup, self, investment)
    end
    def funding_rounds
        FundingRound.all.select {|key| key.venture_capitalist == self}
    end
    def portfolio
        self.funding_rounds.map {|key| key.startup}
    end

    def biggest_investment
        self.funding_rounds.max {|key| key.investment}
    end
    def invested(domain)
        total = 0
        self.funding_rounds.select do |key|
            if key.startup.domain == domain
                total += key.investment
            end
        end
        total
    end

    
end
