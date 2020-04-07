class Startup
   attr_reader :founder
   attr_accessor :name, :domain
   @@all = []
    def initialize(name, founder, domain)
        @name = name
        @founder =founder
        @domain = domain
        @@all << self
    end
    def self.all
        @@all
    end
    def pivot(domain, name)
        self.domain = domain
        self.name = name
    end
    def self.find_by_founder(founder)
        Startup.all.find {|key| key.founder == founder}
    end
    def self.domains
        Startup.all.map {|key| key.domain}.uniq
    end
    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(type, self, venture_capitalist, investment)
    end
    def all_funding_rounds
        FundingRound.all.select {|key| key.startup == self}
    end
    def num_funding_rounds
        self.all_funding_rounds.count
    end
    def total_funds
        total_sum = 0
        self.all_funding_rounds.select do |key|
            total_sum += key.investment
        end
        total_sum
    end
    def investors
        self.all_funding_rounds.map {|key| key.venture_capitalist}
    end
    def big_investors
        self.investors.select{|key| key.total_worth > 1000000000}
    end

end
