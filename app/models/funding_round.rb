class FundingRound
  @@all = []
  attr_reader :startup, :investor, :type, :investment

  def initialize startup, investor, type, investment
    @startup = startup
    @investor = investor
    @type = type
    investment >= 0 ? @investment = investment : @invesment = 0
    FundingRound.all << self
  end

  def self.all
    @@all
  end


end
