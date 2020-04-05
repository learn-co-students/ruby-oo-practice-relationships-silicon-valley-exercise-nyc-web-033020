class FundingRound
  @@all = []
  attr_reader :startup, :investor, :type, :investment

  def initialize startup, investor, type, investment
    @startup = startup
    @investor = investor
    @type = type
    @investment = investment if investment >= 0
    FundingRound.all << self
  end

  def self.all
    @@all
  end


end
