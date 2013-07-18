=begin
LearningRuby Week 3 Exercice 2
=end

# source sentence to replace by the target sentence
source_sentence    = 'word'
target_sentence    = 'inserted word'

# Open the source texte file as an Array
source_file = File.exists?('./week3exercice2-source.txt') ? File.open('./week3exercice2-source.txt','r') : nil

if not source_file 
 puts 'source file not found'
 exit
end

# Create or reset the target file in read-write mode
target_file = File.open('./week3exercice2-target.txt', 'w+') 

# put in target file the array of source file lines with replacement of the target sentence
target_file.puts(source_file.readlines.each{ |line| line.sub!(source_sentence, target_sentence) })
target_file.close

puts 'target file succesfully treated'

