require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
ig = Startup.new("ig", "jordan", "photo")
facebook = Startup.new("facebook", "lance", "social media")
tinder = Startup.new("tinder", "jotaro", "meetup")
hinge = Startup.new("hinge", "lance", "meetup")
tiktok = Startup.new("Tik Tok", "ignace", "social media")
twitter = Startup.new("Twitter", "Mr x", "bird")

jordan = VentureCapitalist.new("jordan", 2000000000)
jotaro = VentureCapitalist.new("jotaro",5000)
lance = VentureCapitalist.new("Lance", 3000000000)
ignace = VentureCapitalist.new("Ignace", 100000000)

jotaro.offer_contract(tinder, "Angel", 2200.50)
jordan.offer_contract(ig, "Angel", 700000)
lance.offer_contract(facebook, "Seed", 5000000)
ignace.offer_contract(tiktok, "Series B", 500000)
ignace.offer_contract(twitter, "pre-seed", 600000)

twitter.sign_contract(lance, "pre-seed", 200)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line