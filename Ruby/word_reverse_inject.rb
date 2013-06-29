# http://www.rubeque.com/problems/reverse-each-word
# http://ruby-doc.org/core-2.0/Enumerable.html#method-i-inject
# After some refactoring both these methods work!  
# Both use Enumerable#inject; however, the first removes the unecessary ' ' at the end of the string 
# using string substitution, while the second uses a conditional to prevent the space from ever being added 
 



def reverse_each_word(sentence)
  jumble = sentence.split.inject('') { |sentence, word| sentence + word.reverse + " " } 
  jumble[-1] = ''
  jumble
end
	
reverse_each_word("Hello there, and how are you?") # => "olleH ,ereht dna woh era ?uoy"



def reverse_each_word(sentence) 
  container = sentence.split
  container.inject('') do |sentence, word|
    if word == container.last
     sentence + word.reverse 
    elsif word != container.last
      sentence + word.reverse + " "
    end
  end
end  

reverse_each_word("Hello there, and how are you?") # => "olleH ,ereht dna woh era ?uoy"


