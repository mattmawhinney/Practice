# http://rubeque.herokuapp.com/problems/fizzbuzz
# Using the ternary operator to replace multiples of 3 
# with "Fizz" multiples of 5 with "Buzz" and multiples of 15 with "FizzBuzz" 
# http://www.rubyinside.com/21-ruby-tricks-902.html


# My soulution 

def fizz_buzz(x)


  x % 15 == 0 ? "FizzBuzz" : x % 5 == 0 ? "Buzz" : x % 3 == 0 ? "Fizz" : x 

end


# Other solutions 

def fizz_buzz(x)

  [("Fizz" if (x%3).zero?), ("Buzz" if (x%5).zero?)].compact.join

end 

def fizz_buzz(x)

  "#{'Fizz' if x % 3 == 0}#{'Buzz' if x % 5 == 0}"

end 