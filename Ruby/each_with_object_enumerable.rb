# Not working yet 

def even_sum(arr) 

  arr.each_with_object([]) { |x, a|  a << x.reverse if x.length % 2 == 0 }  

end


even_sum(['boat','dog','fish'])