class Startup
  @@all = []
    attr_reader :founder, :name, :domain

  def initialize name, founder, domain
    @name = name
    @founder = founder
    @domain = domain
    Startup.all << self
  end

  def self.all
    @@all
  end

  def pivot name, domain
    @name = name
    @domain = domain
  end

  def self.find_by_founder name
    Startup.all.find{ |co| co.founder == name }
  end

  def self.domains
    Startup.all.map{ |startup| startup.domain }
  end

  def sign_contract investor, type, investment
    FundingRound.new(self, investor, type, investment.to_f)
  end

  def num_funding_rounds
    FundingRound.all.select{ |fr| fr.startup == self}.length
  end

  def total_funds
    FundingRound.all.select{ |fr| fr.startup == self}
      .map{ |fr| fr.investment }
      .sum
  end

  def investors
    FundingRound.all.select{ |fr| fr.startup == self }
      .map{ |fr| fr.investor }
      .uniq
  end

  def big_investors
    investors.select{ |investor| VentureCapitalist.tres_commas_club.include?(investor) }    
  end
end
