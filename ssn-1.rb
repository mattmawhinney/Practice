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
    if has_ssn?(x) == true
      extra << grab_ssn(x)
   end
  end   
  extra 
end 

# Obfuscate all of the Social Security numbers in a string. Example: XXX-XX-4430.
def hide_all_ssns(string)

  string.gsub(/(\d{3})(\D*)(\d{2})(\D*)(\d{4})/ ,  'XXX-XX-\5' )
 
end   

# Ensure all of the Social Security numbers use dashes for delimiters.
# Example: 480.01.4430 and 480014430 would both be 480-01-4430.
def format_ssns(string)

  string.gsub(/(\d{3})(\D*)(\d{2})(\D*)(\d{4})/ , '\1-\3-\5')

end