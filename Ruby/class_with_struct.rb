# http://www.ruby-doc.org/core-2.0/Struct.html
# Cool method for creating new objects with certain attributes without 
# having to explicitly define a class. 
# Automatically creates a reader and writer method for all attributes


Architect = Struct.new(:name, :works) do 
end 


flr = Architect.new("frank loyd wright")
imp = Architect.new("I. M. Pei", ["new college dorms", "jfk library"])

flr.works = ["Guggenheim", "fallingwater"]

puts flr.name #"frank loyd wright"
puts imp.works #["new college dorms", "jfk library"]