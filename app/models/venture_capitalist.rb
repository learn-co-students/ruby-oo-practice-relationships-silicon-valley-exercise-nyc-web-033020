class VentureCapitalist
    attr_reader :name, :total_worth
    @@all = []
    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        VentureCapitalist.all << self
    end

    def self.all 
        @@all
    end

    def self.tres_commas_club
        VentureCapitalist.all.select {|investors| investors.total_worth > 1000000000}
    end

    def offer_contract(startup, type, investment)
        FundingRound.new(startup, self, type, investment)
    end

    def funding_rounds
        FundingRound.all.select {|fr| fr.venture_capitalist == self}
    end

    def portfolio
        funding_rounds.map {|fr| fr.startup}.uniq
    end

    def biggest_investment
        funding_rounds.max_by {|fr| fr.investment}
    end

    def invested (domain)
        result = []
        funding_rounds.each do |startups|
            result << startups.investment if startups.startup.domain == domain
            # binding.pry
        end
        result.sum
    end

end
