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


binding.pry
0 #leave this here to ensure binding.pry isn't the last line