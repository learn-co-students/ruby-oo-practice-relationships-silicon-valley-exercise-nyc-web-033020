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

  end

  def self.find_by_founder name

  end

  def self.domains

  end

  def sign_contract investor, type, amount

  end

  def total_funds

  end

  def big_investors

  end
end
