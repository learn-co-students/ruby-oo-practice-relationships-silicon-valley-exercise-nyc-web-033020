require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
ig = Startup.new("ig", "jordan", "photo")
facebook = Startup.new("facebook", "lance", "social media")
tinder = Startup.new("tinder", "jordan", "meetup")
hinge = Startup.new("hinge", "lance", "meetup")
tiktok = Startup.new("Tik Tok", "ignace", "social media")

jordan = VentureCapitalist.new("jordan", 2000000000)
jordan2 = VentureCapitalist.new("jordan",5000)
lance = VentureCapitalist.new("Lance", 3000000000)
ignace = VentureCapitalist.new("Ignace", 100000000)

a = jordan.offer_contract(ig, "Angel", 2200.50)
b = jordan.offer_contract(tinder, "Angel", 700000)
c = lance.offer_contract(facebook, "Seed", 5000000)
d = ignace.offer_contract(tiktok, "Series B", 500000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line