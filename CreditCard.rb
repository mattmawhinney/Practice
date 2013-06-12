# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard

  #Initialize CreditCard object 
  #make sure it return argument errror if not 16 digits 
  #thinking I need a regex that can take any string input and tell if it
  #contains exactly 16 digits 
  def initialize(number)
    unless number =~ /(\d{4})(\s*)(\d{4})(\s*)(\d{4})(\s*)(\d{4})/
      raise ArgumentError 
    end 
    @number = number  
  end
  
  
  #take the number input then perform the various steps of the Luhn algorithm 
  
  
  def card_check
  
  
    #need to take number and split it into an array using number.split 
    #once in array iterate over the array doubling every even indexed number 
    
    first_array = @number.split('')
    count = 0 
    
    first_array.each do |x|
      if count % 2 == 0 
        first_array[count] = (x.to_i * 2).to_s  
      end
      
      count += 1 
    end   
  
  
    #take all of the integers of the array and split them into individual digits 
    
    second_array = first_array.join.split('')
    
    #add all the digits together 
    
    sum = 0 
    
    second_array.each do |x|
      sum += x.to_i 
    end 
  
   #see if they are visible by 10  
    
   if sum % 10 == 0 
    true
   else
    false
   end 
  end
  

end