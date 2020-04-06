require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#startup initialize(founder, name, domain)
#venture_captialist initialize(name)
#funding_round initialize(startup, venture_capitalist)

s1 = Startup.new("Lei", "Beauty", ".com")
s2 = Startup.new("Edgar", "PC", ".com")


v1 = VentureCapitalist.new("Bill", 2500)
v2 = VentureCapitalist.new("Richard", 3000000000)


#The diff types Examples include: Angel, Pre-Seed, Seed, Series A, Series B, Series C
fr1 =FundingRound.new(s1, v1, "Angel", -1343253)
fr2 =FundingRound.new(s2, v1, "Pre-Seed", 3779392)
fr2 =FundingRound.new(s1, v2, "Seed", 5256992)
# fr2 =FundingRound.new(s1, v1, "Seed", 5256992)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line