require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

webfries = Startup.new('Web Fries', 'Mister Fryman', 'www.frymanonline.com')
troy = Startup.new('Get Help with Deanna', 'Counselor Troy', 'www.helpwiththecounselor.starfleet.com')
warpdrive = Startup.new('Go Boldly', "Zephram Cochrane", 'lightspeecpheonix.com')
peace = Startup.new('Peace in our Time', 'Ghandi', 'peace.gov')
kvetch = Startup.new('Kvetch Bucket', 'Bubbe', 'kvetchbucket.com')

richyrich = VentureCapitalist.new('Richy Rich', 1500000000)
sirpendleton = VentureCapitalist.new('Sir Pendleton', 4250000000)
roy = VentureCapitalist.new('Roy Royce', 843000000)
liz = VentureCapitalist.new('Elizabeth McBeth', 45000000)

richyrich.offer_contract(peace,'np',230000)
richyrich.offer_contract(webfries, 'type a', 250000)
richyrich.offer_contract(warpdrive, 'type 1', 800000000)
richyrich.offer_contract(warpdrive, 'type b', 100000000)

liz.offer_contract(warpdrive, 'type b', 100000000)
roy.offer_contract(warpdrive, 'type b', 82000000)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
