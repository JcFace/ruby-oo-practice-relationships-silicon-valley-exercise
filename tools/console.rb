require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
techie = Startup.new("Techie", "Jason Techie", "Whatev.com")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line