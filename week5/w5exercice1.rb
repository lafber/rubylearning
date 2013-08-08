=begin

|-----------------------|
| Week 5  | Exercice 1 |
|---------------------|

Write a class UnpredictableString which is a sub-class of String. This sub-class should have a method called scramble() which randomly rearranges any string as follows:

> ruby unpredictablestring.rb
"daano.r n sdt a htIsw taikmgy r"
The original string was: 
"It was a dark and stormy night."

=end

class UnpredictableString < String
  
  def scramble()
    # split the string in a 1 caracter array and than shuffle it
    # reconstruct the string from the array
    self.split(//).shuffle!.join()
  end
  
end

  ##############
 ##   MAIN   ##
##############

require('../prompt')
sentence_source = prompt('Please enter your sentence to shuffle')

sentence_target = UnpredictableString.new(sentence_source)

puts sentence_target.scramble() 




