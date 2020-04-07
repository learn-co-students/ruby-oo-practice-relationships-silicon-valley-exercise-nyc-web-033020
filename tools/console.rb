require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


greg = Startup.new("greg","greg","the color orange")
lily = Startup.new("eh","her","the color purple")

rich = VentureCapitalist.new("Greggggggory", 1000000000000000000)
rich2 = VentureCapitalist.new("Liz", 7)

ok = FundingRound.new(greg, rich, "initial", 5555500)
ok2 = FundingRound.new(lily, rich, "all in", 888888) 
ok3 = FundingRound.new(greg, rich2, "blindly", 33332)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line