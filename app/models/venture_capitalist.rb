class VentureCapitalist
  @@all = []
  attr_reader :name
  attr_accessor :net_worth

  def initialize name, net_worth
    @name = name
    @net_worth = net_worth
    VentureCapitalist.all << self
  end

  def self.all
    @@all
  end

  def self.tres_commas_club # net_worth > 1 billion
    VentureCapitalist.all.select{ |person| person.net_worth >= 1000000000 }
  end

  def offer_contract startup, type, offer # offer is float
    FundingRound.new(startup, self, type, offer.to_f)
  end

  def funding_rounds
    FundingRound.all.select{ |fr| fr.investor == self }
  end

  def portfolio
    funding_rounds.map{ |fr| fr.startup }.uniq
  end

  def biggest_investment
    funding_rounds.sort_by{ |fr| fr.investment }[-1]
  end

  def invested domain
    funding_rounds.select{ |fr| fr.startup.domain == domain }
      .map{ |fr| fr.investment }
      .sum
  end
    
end
