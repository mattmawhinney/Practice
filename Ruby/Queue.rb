# Not finished 

class Queue

 
  def initialize(array)

    @array = array

  end 
  
  def array
    
    @array.inspect
    
  end
  
  
   def pop(num = 1)
     
     discards =[]
    
       num.times do |x|
         discards << @array.shift
       end 
    
     
     discards.inspect 
       
  end 


  def push(array = 1) 
    
     
    array.reverse.each do |x|
        @array.unshift(x)
      end 
     
    
    @array.inspect
   
  end 


end 

data = Queue.new([5,6,7,8])
puts data.pop
puts data.pop
puts data.push([4,2])
puts data.pop(2)
puts data.array

