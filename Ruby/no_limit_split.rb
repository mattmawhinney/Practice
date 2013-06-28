# http://www.ruby-doc.org/core-1.9.3/String.html#method-i-split

# You can use any negative number as the limit parameter for String#split 
# to get an unlimited number of array elements when splitting a string 

["1", "2", "3"], "1,2,3".split(',' , -1)
["", "", "1", "2", "3"], ",,1,2,3".split(',' , -1)
["1", "2", "3", "", ""], "1,2,3,,".split(',' , -1)