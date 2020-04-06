class VentureCapitalist

    attr_reader :name
    attr_accessor :total_worth

    @@all = []

    def initialize(name, total_worth = nil)
        @name = name
        @total_worth = total_worth
        VentureCapitalist.all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
        array = self.all.select { |vc| vc.total_worth > 1000000000 }
        array.map { |vc| vc.name }
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select { |round| round.venture_capitalist == self }
    end

    def portfolio
        funding_rounds.map.uniq { |round| round.startup }
    end

    #incorrect -- debug
    def biggest_investment
        largest_investment = FundingRound.max { |a, b| a.investment <=> b.investment }
    end

    #incorrect -- debug
    def invested(domain)
        funding_rounds.map { |round| round.domain == domain }
    end

end