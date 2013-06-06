# Determine whether a string contains a Social Security number.
def has_ssn?(string)
   if /\d{3}-\d{2}-\d{4}/.match(string)
    true
  else 
    false
  end 
end

# Return the Social Security number from a string.
def grab_ssn(string)
   string[/\d{3}-\d{2}-\d{4}/]
end

# Return all of the Social Security numbers from a string.
def grab_all_ssns(string)
  new = string.split(' ')
  extra = []
  new.each do |x|
    if /\d{3}-\d{2}-\d{4}/.match(x)
      extra << x[/\d{3}-\d{2}-\d{4}/]
    elsif /\d{3}-\d{2}-\d{4},/.match(x)
      extra << x[/\d{3}-\d{2}-\d{4},/] 
   end
  end   
  extra 
end 

# Obfuscate all of the Social Security numbers in a string. Example: XXX-XX-4430.
# What about obfuscating a one character string 
#Need to take string and break it into an array (it will be reassembled later)
#Find the elements of the array that match the ssn patern 
#Put those into a new array and iterate over array to obfuscate
#Then return to the original string and replace the ssns with obfuscated 
#SSNs using a stagered count k





def hide_all_ssns(string)
  new = string.split(' ')
  extra = []
  
  new.each do |x|
    if /\d{3}-\d{2}-\d{4},/.match(x)
      extra << x[/\d{3}-\d{2}-\d{4},/]
    elsif /\d{3}-\d{2}-\d{4}/.match(x)
      extra << x[/\d{3}-\d{2}-\d{4}/]
   end
  end   

  extra.each do |x|
    x[0..2] = 'X' * 3 
    x[4..5] = 'X' * 2
  end  
 
  count = 0 

  new.each do |x|
    if new[count] =~ /\d{3}-\d{2}-\d{4}/ || new[count] =~ /\d{3}-\d{2}-\d{4},/
       new[count] = extra[0]
       extra.shift
   end
   count += 1 
  end 
  
  new.join(' ')
end



  

# Ensure all of the Social Security numbers use dashes for delimiters.
# Example: 480.01.4430 and 480014430 would both be 480-01-4430.
def format_ssns(string)
  new = string.split(' ')
  extra = []
  
  new.each do |x|
    if /\d{3}.\d{2}.\d{4},/.match(x)
      extra << x[/\d{3}.\d{2}.\d{4},/]
    elsif /\d{3}.\d{2}.\d{4}/.match(x)
      extra << x[/\d{3}.\d{2}.\d{4}/]
    elsif /\d{9},/.match(x)
      extra << x[/\d{9},/]
    elsif /\d{9}/.match(x)
      extra << x[/\d{9}/]
    end
  end   

  extra.each do |x|
    if x.length == 11 || x.length == 12 
    x[3] = '-' 
    x[6] = '-' 
    end
    if x.length == 9 || x.length == 10 
      flip_it = x
   
   
   #method for handling 9d
   
   improper = "786524567".scan(/./)
proper = []
count = 0 

  improper.each do  |x|
    
    if count == 3 || count == 5
      proper << "-" 
    end 
    proper << x 
    count += 1
  end 


puts proper.join 
     
   
   
   
  end  
 
  count = 0 

  new.each do |x|
    if (new[count] =~ /\d{3}.\d{2}.\d{4}/ || new[count] =~ /\d{3}.\d{2}.\d{4},/ || new[count] =~ /\d{9}/ || new[count] =~ /\d{9},/)
       new[count] = extra[0]
       extra.shift
   end
   count += 1 
  end 
  
  new.join(' ')
end
