# http://rubeque.herokuapp.com/problems/array-item-removal

# Want to get {:b, :q] from [:r, :u, :b, :e, :q, :u, :e]


# Couple of differnt ways to do this one 
# Way I initially did it
# I tried to use n != :b || n != :q in the block 
# But this wouldn't work for some reason
# http://ruby-doc.org/core-2.0/Array.html#method-i-reject
# http://ruby-doc.org/core-2.0/Array.html#method-i-delete_if 


def item_remove(array)


  .reject {|n| n == :r || n == :u || n == :e}

end 

puts item_remove([:r, :u, :b, :e, :q, :u, :e]).inspect # =>[:b, :q]




# Simpler syntax
# http://ruby-doc.org/core-2.0/Array.html#method-i-26 


def item_remove(array)

  array&[:b,:q]


end

puts item_remove([:r, :u, :b, :e, :q, :u, :e]).inspect # =>[:b, :q]


#Yet another soulution 
# http://ruby-doc.org/core-2.0/Array.html#method-i-keep_if



def item_remove(array)

  array.keep_if { |a| a == :b || a == :q }

end 

puts item_remove([:r, :u, :b, :e, :q, :u, :e]).inspect # =>[:b, :q]