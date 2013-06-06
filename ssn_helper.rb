str = 'Look at 999678909, and 123456789'
new = str.split(' ') 
extra = []

  new.each do |x|
    if /\d{9},/.match(x)
      extra << x[/\d{9},/]
    elsif /\d{9}/.match(x)
      extra << x[/\d{9}/]
    end
  end   


  extra.each do |x|
    
     improper = x.scan(/./)
     proper = []
     count = 0 
    
     
      improper.each do  |y|
        proper << y 
        if count == 3 || count == 5
         proper << "-" 
       end 
       extra[count] = proper[count]
       count += 1 
      end 
    end 
   end  

puts extra.join