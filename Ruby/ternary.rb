# http://www.rubyinside.com/21-ruby-tricks-902.html
# Ternary operator is like doing an if/else statment on one line 
# Or like doing if/elsif/else statements 
# On one line, if you use nested ternary operators 


x = 10 

puts x == 10 ? "x is ten" : "x is not ten" # => 'x is ten' 



qty = 1
qty == 0 ? 'none' : qty == 1 ? 'one' : 'many' # => 'one'


qty = 5
qty == 0 ? 'none' : qty == 1 ? 'one' : 'many' # => 'many'
