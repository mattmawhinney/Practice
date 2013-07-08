# Method that when passed an arabic numeral returns an old 
# RN. So 4 is IIII rather than IV 
# and 9 is VIIII rather than IX 



# In this version need to use conditionals for any numbers containing 4's or 9's 

def roman_numeral num

  thousands = (num / 1000) 
  hundreds = (num % 1000 / 100 )  
  tens = (num % 100 / 10)
  ones = (num % 10) 

  rn = "M" * thousands 

 
   if hundreds == 9 
     rn += "CM"
   elsif hundreds == 4 
     rn +="CD"
   else 
    rn += "D" * (num % 1000 / 500) 
    rn += "C" * (num % 500 / 100)   
   end 


   if tens == 9 
     rn += "XC"
   elsif tens == 4 
     rn +="XL"
   else 
    rn += "L" * (num % 100 / 50) 
    rn += "X" * (num % 50 / 10)   
   end 

  if ones == 9 
     rn += "IX"
   elsif ones == 4 
     rn +="IV"
   else 
    rn += "V" * (num % 10 / 5) 
    rn += "I" * (num % 5 )   
   end 


   rn

end

puts  roman_numeral 1999
puts  roman_numeral 2000
puts  roman_numeral 1452
puts  roman_numeral 987
puts roman_numeral 9 
puts roman_numeral 999


