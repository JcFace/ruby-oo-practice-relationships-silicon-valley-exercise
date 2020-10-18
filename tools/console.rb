require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
techie = Startup.new("Techie", "Jason Techie", "Whatev.com")
defcon = Startup.new("Defcon", "Jason Techie", "Super.com")
techie.pivot("Yes,Please.com", "Yaeaah!")
may = VentureCapitalist.new("May Valencia", 10000000000)
jesse = VentureCapitalist.new("Jesse Vaughn", 1000000)
Startup.domains
funding_round_1 = FundingRound.new(defcon, may, "Series A", 100000.000)
funding_round_2 = techie.sign_contract(jesse)
funding_round_3 = FundingRound.new(defcon, may, "Series B", 15000000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line