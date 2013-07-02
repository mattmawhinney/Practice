# http://ruby-doc.org/core-2.0/Enumerable.html#method-i-each_with_object
# Returns the reverse of words in a given array with an even number of chars
# using Enumerable#each_with_object
# This can be used instead of creating some new array using an array literal 
# to store values created by iterating over some type of object 

  def even_sum(arr)
    arr.compact.each_with_object([]) do |word, array| 
      if word.length % 2 == 0     
        array << word.reverse  
      end
    end 
  end  

 puts even_sum(["cat", "dog", "bird", "fish"]) == ["drib", "hsif"]
 puts even_sum(["why", "chunky", nil, "lucky", "stiff"]) == ["yknuhc"]
 puts even_sum(["rewsna", "hitch hiker", "si", "guide", "galaxies ", "24"]) == ["answer", "is", "42"]

