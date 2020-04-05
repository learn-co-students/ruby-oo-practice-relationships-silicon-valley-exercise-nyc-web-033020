class Startup
    attr_reader :founder_name
    attr_accessor :domain, :name
    @@all = []
    def initialize (name, founder_name, domain)
        @name = name
        @founder_name =founder_name
        @domain = domain
        @@all << self
    end
    def pivot=(name, domain)
        @name = name
        @domain = domain
    end
    def self.all
        @@all
    end 
    def self.find_my_founder(founder_name)
        @@all.find do |key|
            if key.founder_name == founder_name
                return key
            else
                "#{founder_name} did not create a startup yet."
            end
        end
    end

    def self.domains
        array = []
        @@all.select do |key|
            array << key.domain
        end
        array.uniq
    end

    def sign_contract(venture_capitalist, type, investment)
        FundingRound.new(self, venture_capitalist, type, investment)
    end
    def num_of_funding_rounds(startup)
        array = []
        FundingRound.all.select do |key|
            if key.startup == startup
                array << key
            end
        end
        array.count
    end
    def total_funds(startup)
        total = 0
        FundingRound.all.select do |key|
            if key.startup == startup
                total += key.investment
            end
        end
        total
    end
    def investors(startup)
        array = []
        FundingRound.all.select do |key|
            if key.startup == startup
                array << key.venture_capitalist
            end
        end
        array
    end
    def big_investors(startup)
        array = investors(startup)
        ans = []
        array.select do |key|
            VentureCapitalist.tres_commas_club.select do |value|
                if key == value
                    ans << key
                end
            end
        end
        ans
    end

end
