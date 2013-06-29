# http://www.rubeque.com/problems/including-modules
# When including modules in classes different syntax 
# can affect which module takes precedence 
module A
  def name
    "a"
  end
end

module B
  def name
    "b"
  end
end

class C
  include A
  include B
  
end

class D
  include A, B
end

matt = C.new.name 
mike = D.new.name 
puts matt # => "b"
puts mike # => "a"