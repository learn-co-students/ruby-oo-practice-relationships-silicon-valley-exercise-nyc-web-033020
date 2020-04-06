require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


facebook = Startup.new("Facebook", "M.Zuck", "thefacebook.com")
salesforce = Startup.new("Salesforce", "M.Benioff", "salesforce.com")
wework = Startup.new("WeWork", "A.Neumann", "wework.com")
telsa = Startup.new("Tesla Motors", "E.Musk", "telsa.com")
amazon = Startup.new("Amazon", "J.Besos", "amazon.com")

w_buffet = VentureCapitalist.new("Warren Buffet", 90000000000)
e_musk = VentureCapitalist.new("Elon Musk", 19000000000)
j_besos = VentureCapitalist.new("Jeff Besos", 50000000000)
s_jobs = VentureCapitalist.new("Steve Jobs", 44000000000)
s_cases = VentureCapitalist.new("Steve Cases", 120000)

facebook.sign_contract("Warren Buffet", "Angel", 2220000.68)
facebook.sign_contract("Steve Jobs", "Angel", 1240004.45)
salesforce.sign_contract("Steve Cases", "Angel", 12000)
wework.sign_contract("Steve Jobs", "Angel", 120000.50)
telsa.sign_contract("Elon Musk", "Angel", 120000)
amazon.sign_contract("Jeff Besos", "Angel", 120000)
amazon.sign_contract("Jeff Besos", "Angel", 120000)
amazon.sign_contract("Warren Buffet", "Angel", 120000)

w_buffet.offer_contract("Facebook", "Angel", 324534.23)
w_buffet.offer_contract("Salesforce", "Angel", 345344.23)
w_buffet.offer_contract("WeWork", "Angel", 374534.23)
e_musk.offer_contract("Tesla", "Angel", 734534.23)
e_musk.offer_contract("Salesforce", "Angel", 345734.23)
j_besos.offer_contract("Amazon", "Angel", 347534.23)
s_cases.offer_contract("Salesforce", "Angel", 34534.23)

FundingRound.new("WeWork", "Warren Buffet", "Angel", 1600000000)

binding.pry
0 #leave this here 