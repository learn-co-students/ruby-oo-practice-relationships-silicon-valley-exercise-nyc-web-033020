class Startup
    attr_reader :founder
    attr_accessor :domain, :name 
    @@all = [] 
    def initialize(name,founder, domain)
        @name = name 
        @founder = founder
        @domain = domain
        Startup.all << self 
    end 
    
   def self.all 
    @@all 
   end 

   def self.find_by_founder(founder) #yay
         Startup.all.find do | startup|
        startup.founder == founder
        end 
     end 

     def self.domains #yay
        Startup.all.map do |startup|
            startup.domain
        end 
    end 

    def sign_contract(venturecapitalist, type_of_investment, money) #works 
     #given a venture capitalist object, type of investment (as a string), and the amount invested (as a float), 
     #creates a new funding round and associates it with that startup and venture capitalist.
     FundingRound.new(self, venturecapitalist, type_of_investment, money)
    end 

    def num_funding_rounds #yay
     #Returns the total number of funding rounds that the startup has gotten
     FundingRound.all.select do |funs|
        funs.startup == self 
     end.count 
    end 

    def total_funds #great 
     #Returns the total sum of investments that the startup has gotten
     FundingRound.all.select do |funs|
        funs.startup == self 
     end.map { |funs| funs.investment }
    end 

    def investors #yay
    #Returns a unique array of all the venture capitalists that have invested in this company
     FundingRound.all.select do |funs|
        funs.startup == self 
     end.map{ |funs| funs.venture_capitalist }.uniq
     end 

     def big_investors #yay
     #Returns a unique array of all the venture capitalists that have invested in this company 
     #and are in the Trés Commas club VentureCapitalist
         investors.select do |person|
         person.total_worth > 1000000000
        end
     end 

end
