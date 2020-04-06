class Startup
    attr_reader :founder
    attr_accessor :name, :domain
    @@all = []
    def initialize(founder, name, domain)
        @founder = founder
        @name = name
        @domain = domain
        Startup.all << self
    end

    def pivot(domain, name)

    end

    def self.all
        @@all
    end

    def pivot (domain, name)
        @domain = domain
        @name = name
    end

    def self.find_by_founder (founder_name)
        Startup.all.find{|startups| startups.founder == founder_name }
    end

    def self.domains
        Startup.all.map {|startups| startups.domain}.uniq
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end

    def startup_funds
        FundingRound.all.select {|fd| fd.startup == self}
    end
    def num_funding_rounds
        FundingRound.all.count {|fd| fd.startup == self}
    end

    def total_funds
        startup_funds.map do |fd| 
            # binding.pry
            fd.investment
        end.sum
    end

    def investors
        startup_funds.map {|fd| fd.venture_capitalist}.uniq
    end

    def big_investors
        investors.find do |investors| 
            # binding.pry
            investors.total_worth > 1000000000
        end
    end

end
