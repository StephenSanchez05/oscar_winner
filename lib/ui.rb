require_relative './scraper.rb'

class UI 
  
  def start
    Scraper.new.get_oscar_winners
    puts "Welcome to the Oscars"
    intro
  end
   
   
   def intro
    puts ""
    puts "Would you like to see all the winners or a specific category? (all/category)"
    input = gets.strip
    
    if input == "all"
      Scraper.new.print_oscars
    end
  end 
end
    