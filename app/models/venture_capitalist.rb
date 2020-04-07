require 'pry'
class VentureCapitalist
    attr_reader :name, :total_worth 
    @@all = [ ]
    def initialize(name, total_worth)
        @name = name 
        @total_worth = total_worth
        VentureCapitalist.all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.tres_commas_club #yay
        VentureCapitalist.all.select do |person|
            person.total_worth > 1000000000
        end 
    end 

    def offer_contract(startup, type, amount)
     #given a startup object, type of investment (as a string), and the amount invested 
     #(as a float), creates a new funding round and associates it with that startup and venture capitalist.
     FundingRound.new(startup, self, type, amount)
     end 

     def funding_rounds #yay
      #returns an array of all funding rounds for that venture capitalist
      FundingRound.all.select do |round|
        round.venture_capitalist == self 
      end 
     end 

      def portfolio # yay
       #Returns a unique list of all startups this venture capitalist has funded
        funding_rounds.map do |round|
            round.startup 
         end
      end 

       def biggest_investment #yay
       #returns the largest funding round given by this venture capitalist
           funding_rounds.map do |round|
            round.investment
           end.max
       end

       def self.start_ups_by_domain(domain) #yas
        Startup.all.select do |place|
            place.domain == domain 
        end 
       end 

      def self.invested(domain) #omgyes 
       #given a domain string, returns the total amount invested in that domain
         #FundingRound.all.select do |round|
          #place = VentureCapitalist.start_ups_by_domain(domain)

            FundingRound.all.select do |round|
                 round.startup.domain == domain 
                 #binding.pry 
          end.map{ |round| round.investment }.sum
       end 

end 
