# Need to use this method, but make it so that words inputted with capital letters 
# are returned in proper alph order and are still capitalized 
# I think I'll need to use downcase
# Once I've used downcase, I need a way to keep track of which words had been capitalized initially, perhaps by moving them into their own array? 
# I need to be able to compare the words in this array, to all the other words in initial array 
# Then put them in their proper place in the sorted array, and they need to be capitalized 


# http://stackoverflow.com/questions/2174419/ruby-ternary-operator-without-else


def dictionary_sort(string) 

  capitalized = string.split(' ').each_with_object([]) { |w, a| a << w if w == w.capitalize }

  # downcase and sort orignal list
  
  
  first_sort = string.downcase.split(' ').sort 

  # after sorting need to compare each element to each element of capitalized
  # if the capitalized version of an element from the sorted list matches and element from 
  # capitalized, need to replace it with the element from capitalized 
  
  # I'm sure there are other ways to do this, but I used Array#product 
  # to create pairs of all the elements from capitalized and first_sort 
  # I then went through and found which pairs had a first element that when capitalized, matched the second element 
  # Then I found the downcased word within first_sort using Array#index 
  # and replaced it with the capitalized version of itself 

  # http://stackoverflow.com/questions/6692840/iterating-over-two-arrays-at-once
  # http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-product
  # http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-index


  first_sort.product(capitalized).each { |x| first_sort[first_sort.index(x[0])] = x[1] if x[0].capitalize == x[1] }
      

  first_sort.inspect 
  
end 
  




puts dictionary_sort("I like Zo Do you like zee")