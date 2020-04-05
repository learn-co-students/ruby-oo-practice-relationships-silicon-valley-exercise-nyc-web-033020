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

  def offer_contract startup, offer # offer is float

  end

  def funding_rounds

  end

  def portfolio

  end

  def biggest_investment

  end

  def invested domain

  end
    
end
