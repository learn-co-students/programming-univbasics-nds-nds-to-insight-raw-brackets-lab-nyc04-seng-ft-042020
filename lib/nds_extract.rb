$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)

  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  result = Hash.new
  
  dir_index = 0 
  while dir_index < nds.length do
    movies_index = 0
    directors_totals = 0
    
    while movies_index < nds[dir_index][:movies].length do
      directors_totals += nds[dir_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1
      
    end
    result.merge!(nds[dir_index][:name] => directors_totals)
    dir_index += 1
    
  end
  result
  
end


# Commented out testing below; used it to familiarized myself with data structure and wrote out loop logic accordingly to solve assignment
#pp directors_database
#p directors_database[0][:movies][1][:worldwide_gross]
#p directors_database[1][:name]
# p directors_totals(directors_database)