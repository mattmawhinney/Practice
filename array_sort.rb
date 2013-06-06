def sort(arr)
  rec_sort(arr, [])
end 



def rec_sort(unsorted, sorted)
  if unsorted.length <= 0
    return sorted
  end 
  
  
  smallest = unsorted.pop 
  still_unsorted = []
  
  
  #iterate over the array of unsorted objects
  #if the object being tested is smaller (higher in alph order) than the last element in the array 
  #then that last element in the array gets moved into still unsorted 
  #the smallest element has to remain in the arrray until the tested object is smaller than it 
  #otherwise it seems like it would get popped into oblivion and never sorted 
  #ultimately what this does is say if the object in an array being iterated over 
  #is less than the last object, move the last object into still unsorted 
  #and reasign the obj we were iterating over the value of smallest
  #if the the obj we are iterating over 
  
  unsorted.each do |tested_object|
    if tested_object < smallest 
      still_unsorted << smallest 
      smallest = tested_object
    else 
      still_unsorted << tested_object
    end 
  end
  
  sorted << smallest  
  
  
  rec_sort still_unsorted, sorted 
end 

