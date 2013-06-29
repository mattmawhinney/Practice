# http://rubeque.herokuapp.com/problems/your-favorite-and-mine-comma--fibonacci-excl-
# My solution using an array which I can't get to work 

def fibo_finder(n)

  array = [0,1] 

  

  if n == 0 
    0 
  elsif n == 1 
    1
  else 
    (n-1).times do 
    array << (array[n-1] + array[n-2])
    end 
  end 

  array[n]
  
end 



fibo_finder(0) # => 0 
fibo_finder(1) # => 1
fibo_finder(4) # => 3
fibo_finder(7) # => 13
fibo_finder(10) # => 55



# Definition using recursion 

def fibo_finder(n)

  if n == 0 
    0 
  elsif n == 1 
    1
  else 
    (fibo_finder(n-1)+fibo_finder(n-2))
  end 
end 




fibo_finder(0) # => 0 
fibo_finder(1) # => 1
fibo_finder(4) # => 3
fibo_finder(7) # => 13
fibo_finder(10) # => 55




