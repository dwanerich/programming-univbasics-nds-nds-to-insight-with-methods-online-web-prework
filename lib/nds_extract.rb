require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }



def directors_totals(nds)
  result = {}
  
  counter = 0
  new_hash = {}
  
  while counter < nds.length do
    total_gross = 0
    name = nds[counter][:name]
    movies = nds[counter][:movies]
    index = 0
    while index < movies.length do
      directors_earnings = movies[index][:worldwide_gross]
      total_gross += directors_earnings
      index += 1    
    end
      new_hash[name] = total_gross
      # Store directors earnings
      counter += 1
  end
      
      new_hash
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
end
