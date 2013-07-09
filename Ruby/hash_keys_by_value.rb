
# My soulution 
# In looking at the other solutions below, it seems that way that defining methods 
# in a class works is that self is implicit for methods that will be called like so: example.method 
# Using "self" as I did, is not necessay 



class Hash
  
  def keys_of(*args)
    # want to take a hash with key value pairs 
    # and return a value based on keys 
    count = 0 
    keys = []
    
   while count < args.length  
     self.each do |key, value|
       if value == args[count]
         keys << key
       end 
     end 
     
     count += 1 
   end 
   
   keys.sort 
  end

end


jim = {:a => 1, :b => 2, :c => 3, :d => 3}

puts jim 


puts jim.keys_of(3)
 

#Can't get these to work
#Seems to be a syntax problem 
#puts {:a => 1, :b => 2, :c => 3, :d => 1}.keys_of(1) 
#puts {:a => 1, :b => 2, :c => 3, :d => 1}.keys_of(1, 2)  




# A one line solution

class Hash

  def keys_of(*args)
    select { | k, v | args.include? v }.keys
  end

end 


jim = {:a => 1, :b => 2, :c => 3, :d => 3}

puts jim 


puts jim.keys_of(3)
 


#Can't get these to work
#Seems to be a syntax problem 
#puts {:a => 1, :b => 2, :c => 3, :d => 1}.keys_of(1) 
#puts {:a => 1, :b => 2, :c => 3, :d => 1}.keys_of(1, 2)  



# Another one line solution 

class Hash

  def keys_of(*args)

    each_pair.with_object([]) { |(k,v),arr| arr << k if args.include? v }

  end
end 

jim = {:a => 1, :b => 2, :c => 3, :d => 3}

puts jim 


puts jim.keys_of(3)
 


#Can't get these to work
#Seems to be a syntax problem 
#puts {:a => 1, :b => 2, :c => 3, :d => 1}.keys_of(1) 
#puts {:a => 1, :b => 2, :c => 3, :d => 1}.keys_of(1, 2)  

