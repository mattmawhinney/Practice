# http://rubeque.herokuapp.com/problems/blackjack
# When putting * (aka 'splat') before a paramter/s in a method
# It will automatically turn those parmaters into an array 
# Makes inputing data a little easier 

def twenty_one?(*input)
  sum = 0 
  input.each do |x|
    sum +=x
  end
  
  sum == 21
  
end

puts twenty_one?(9,10,2)
puts twenty_one?(9,10,1)