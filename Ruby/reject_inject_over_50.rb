# http://rubeque.herokuapp.com/problems/injected-and-rejected
# Use Enumerable#reject and Enumerable#inject to 
# Add all numbers in an array greater than 50 


def reject_inject(array)


  reject {|num| num <= 50}.inject(0) {|sum, number| sum + number}
 
end





puts reject_inject([29, 52, 77, 102])