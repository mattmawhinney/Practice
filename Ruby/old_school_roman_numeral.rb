# Method that when passed an arabic numeral returns an old 
# RN. So 4 is IIII rather than IV 
# and 9 is VIIII rather than IX 


def old_school_roman_numeral num



  osrn = "M" * (num / 1000) 
  osrn = osrn + "D" * (num % 1000 / 500) 
  osrn = osrn + "C" * (num % 500 / 100) 
  osrn = osrn + "L" * (num % 100 / 50) 
  osrn = osrn + "X" * (num % 50 / 10) 
  osrn = osrn + "V" * (num % 10 / 5)
  osrn = osrn + "I" * (num % 5)

  osrn
 
 


end

puts  old_school_roman_numeral 1900
puts  old_school_roman_numeral 85
puts  old_school_roman_numeral 546
puts  old_school_roman_numeral 4
puts  old_school_roman_numeral 10
puts  old_school_roman_numeral 1600



