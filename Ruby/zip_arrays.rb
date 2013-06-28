# http://ruby-doc.org/core-2.0/Array.html#method-i-zip
# Takes arrays and puts elements int the same position into an array within an array 

a1 = [1, 2, 3]
a2 = [2, 3, 4]
b1 = ["durham", "bartow", "zwolle"]
b2 = ["nc", "fl", "nl"]

a1.zip(a2) # =>[[1, 2], [2, 3], [3, 4]]
[10, 11, 12].zip(a1, a2) # => [[10, 1, 2], [11, 2, 3], [12, 3, 4]]
b1.zip(b2) # => [["durham", "nc"], ["bartow", "fl"], ["zwolle", "nl"]]