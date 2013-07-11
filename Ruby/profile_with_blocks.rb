# From Pine 157
# Simple method for timing how long it take certain blocks of code to run 

def profile block_description, &block
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_description}: #{duration} seconds"
end

#profile '25000 doublings' do
#  number = 1

#  25000.times do
#    number = number + number
#  end

#  puts "#{number.to_s.length} digits"
#  # That's the number of digits in this HUGE number.
#end

#profile 'count to a million' do
#  number = 0
#  1000000.times do
#    number = number + 1
#  end
#end
#profile 'count to a ten million' do
#  number = 0
#  10000000.times do
#    number = number + 1
#  end
#end

#profile 'array empty' do 
#  jane = [1,3,5,6,7,8,9,3,5,6,7,9]
#  while jane.length > 1 
#    jane.pop
#  end 
#  puts jane.inspect 
    
#end 

# Oddly enough the "Elegant" method times at 0.01 seconds 
# While the clunky method times at 0.0 seconds
# I am guessing the select method takes more processing power to work its magic? 

profile 'Hash Keys Elegant' do 
  values = [2,3]
  jennifer = {a: 1, b: 2, c: 3, d: 1}
  sheer = jennifer.select { | k, v | values.include? v }.keys
  puts sheer.inspect  
end 



profile 'Hash Keys Clunky' do 
  values = [2,3]
  jennifer = {a: 1, b: 2, c: 3, d: 1}
  count = 0 
  keys = []
  while count < values.length   
  jennifer.each do |key, value|
      if value == values[count]
        keys << key
      end 
    end 
    count += 1 
  end 

  puts keys.sort.inspect   

end 




