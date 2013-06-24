class House 

  def initialize(temp, min, max)
    @temp = temp 
    @min = min
    @max = max 
    @ac = true 
    @heater = false
    puts "The temperature is #{@temp} and the AC is running" 
  end 

  def ac_on 
   @ac = true 
   @heater = false 
  end 

  def heater_on
    @ac = false 
    @heater = true 
  end 


  def update_temperature!
     if @ac == true
      @temp -= 2 
    elsif @heater == true
      @temp += 1
    end 
  
    if @temp >= @max
      ac_on
    elsif @temp <= @min
      heater_on 
    end 
  
    puts @temp
    
    if @ac == true 
      puts 'The AC is on' 
    elsif @heater == true 
      puts 'The heater is on'
    end   
  
  end 
 
end  


casa_de_mateo = House.new(30, 25, 35) 
casa_de_mateo.update_temperature!
casa_de_mateo.heater_on 
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.ac_on 
casa_de_mateo.update_temperature!
casa_de_mateo.ac_on 
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.heater_on 
casa_de_mateo.update_temperature!
casa_de_mateo.ac_on 
casa_de_mateo.update_temperature!
casa_de_mateo.heater_on
casa_de_mateo.update_temperature!
casa_de_mateo.heater_on 
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature!
casa_de_mateo.update_temperature! 
