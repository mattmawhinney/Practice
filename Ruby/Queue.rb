# http://rubeque.herokuapp.com/problems/queue-continuum
# The idea is to take an array as an input 
# and change it into a data structure called a queue 
# which behaves a lot like an array accept it pops elements 
# off the front rather than the back. 
# I went ahead and made it a program you can run through the command line, 
# but your arrays must be entered as a series of numbers separates by commas
# e.g (1,2,3,4) instead of as an araay i.e ([1,2,3,4])



class Queue

 
  def initialize(array)
    @array = array
  end 
  
  def array
    @array.inspect
  end
  
  def pop(num = 1)  # num = 1 sets default value to 1 
    discards =[]
    
    num.times do |x|
      discards << @array.shift
    end 
   
    discards.inspect 
   end 


  def push(array = [])    # array = [] sets the default value to an empty array  
    array.each do |x|
        @array << x
      end 
    
    @array.inspect
   end 

end 


puts %/
We are going to make a queue.
A queue is like an array, 
But instead of poping values from its "end"
A queue pops values from its beginning.
Please enter a series of integers 
Separated by a "," to make a new Queue:/

array = gets.chomp.split(",") 
data = Queue.new(array)

while true
  puts
  puts 'commands: push, pop, exit:'
  command = gets.chomp
    if command == 'exit'
      puts data.array 
      exit
    elsif command == 'push'
      puts 'Please enter a number of numbers separated by a ","  to push:'
      numbers = gets.chomp.split(",") 
      data.push(numbers)
      puts data.array
    elsif command == 'pop'
      puts 'Please enter the number of elements you\'d like to pop:'
      pops = gets.chomp.to_i
      data.pop(pops)
      puts data.array 
    end 
    
    
end 
 


