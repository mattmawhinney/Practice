# http://rubeque.herokuapp.com/problems/the-curious-case-of-the-missing-method
# Compact removes all nil elements from array
# Then inject as definied in the respective blocks  
# Sums or multiply all the numbers in the array 
# http://ruby-doc.org/core-2.0/Enumerable.html#method-i-inject



def nil_remove_sum(array)


  array.compact.inject {|sum, number| sum + number}

end


def nil_remove_product(array)


  array.compact.inject {|product, number| product * number}

end



puts nil_remove_sum([4,5,nil,9,nil]) # => 18 
puts nil_remove_product([4,5,nil,9,nil]) # => 180 