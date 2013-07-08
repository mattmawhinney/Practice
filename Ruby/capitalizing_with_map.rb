# http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-map
# http://stackoverflow.com/questions/9429819/what-is-the-functionality-of-operator-in-ruby
# Both bits of code take a uncapitalized first name and lastname 
# and return them capitalized 
# But using map does this with far fewer lines. 
# Essentailly map creates a new array automatically into which our split string will be moved
# and (&:reverse) passes a proc to the new array which capitalizes each element in the new array 

name = "kurt vonnegut"

puts name.split.map(&:capitalize).join(" ")


#############################

splits = name.split

new = []
splits.each do |x|
  new << x.capitalize
end 

puts new.join(" ") 


#################################
