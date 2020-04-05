require 'pry'
class VentureCapitalist
    attr_accessor :name, :worth
    @@all = []
    def initialize(name, worth)
        @name =name
        @worth =worth
        @@all << self
    end
    def self.all
        @@all
    end
    def total_worth(name)
        total = 0
        VentureCapitalist.all.select do |key|
            if key.name == name
                total += key.worth
            end
        end
        total
    end
    def self.tres_commas_club
        array = []
        @@all.select do |key|
            total = total_worth(key.name)
            if total > 1000000000
                array << key
            end
        end
        array
    end
    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end
    def funding_rounds(venture_capitalist)
        array = []
        FundingRound.all.select do |key|
            if key.venture_capitalist == venture_capitalist
                array << key
            end
        end
        array
    end
    def portfolio(venture_capitalist)
        array = []
        FundingRound.all.select do |key|
            if key.venture_capitalist ==venture_capitalist
                array << key.startup
            end
        end
        array
    end
    def biggest_investment(venture_capitalist)
        big_invest = 0
        ans = nil
        FundingRound.all.select do |key|
            if big_invest < key.investment && key.venture_capitalist == venture_capitalist
                big_invest = key.investment
                ans = key
            end
        end
        ans
    end
    def invested(domain)
        total = 0
        FundingRound.all.select do |key|
            if key.startup.domain == domain
                total += key.investment
            end
        end
        total
    end


end
