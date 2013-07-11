def grandfather_clock &chime_sound 

  #Initially wrote current to allow me to input whatever time I like 
  #So I could tests from times after 1PM 
  #current = Time.local(2013,"jul",11,16,25,0).hour 

  current = Time.new.hour
  current -= 12 if current >= 13 
  current.times { chime_sound.call } 
 
  
end 

grandfather_clock { puts "BOING!" }
 