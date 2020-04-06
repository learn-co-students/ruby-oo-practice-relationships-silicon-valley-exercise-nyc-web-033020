class Startup

    attr_accessor :name, :founder, :domain

    @@all = []

    def initialize(name = nil, founder = nil, domain = nil)
        @name = name
        @founder = founder
        @domain = domain
        Startup.all << self
    end

    def self.all
        @@all
    end

    def pivot(domain, name)
        @domain = domain
        @name = name        
    end

    def self.find_by_founder(founder)
#given a string of a founder's name, returns the first startup whose founder's name matches
        array = self.all.find { |startup| startup.founder == founder }.name
    end

    def self.domains
#return array of different startup domains
        self.all.map { |startup| startup.domain }
    end

    def sign_contract(venture_capitalist, type, amount)
        FundingRound.new(self, venture_capitalist, type, amount)
    end

    def funding_rounds
        FundingRound.all.select { |fundrounds| fundrounds.startup == self  }
    end

    def num_funding_rounds
        funding_rounds.count
    end

    def total_funds
        total = 0
        funding_rounds.map { |rounds| total += rounds.investment }
        return total
    end

    def investors
        array = funding_rounds.map.uniq { |rounds| rounds.venture_capitalist }
        array.map { |investor| investor.venture_capitalist }
    end

    def big_investors
        #return a UNIQUE ARRAY of vc's who invested and are in the tres_commas_club
        funding_rounds.map { |big_vc| big_vc.venture_capitalist.tres_commas_club == self }
    end

end