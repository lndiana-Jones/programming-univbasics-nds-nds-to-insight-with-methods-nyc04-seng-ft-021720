$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_count = 0 
  director_gross = 0
  while movies_count < director_data[:movies].length
    director_gross += director_data[:movies][movies_count][:worldwide_gross]
    
    movies_count += 1 
  end
  director_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_count = 0 
  
  while director_count < nds.length 
    result[nds[director_count][:name]] = gross_for_director
  
  director_count += 1 
  end
  
  result
end
puts directors_totals(directors_database)

require 'pp'
pp directors_database
