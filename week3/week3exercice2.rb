=begin
LearningRuby Week 3 Exercice 2
=end

# source sentence to replace by the target sentence
source_sentence    = 'word'
target_sentence    = 'inserted word'

# Get file name
file_name = ARGV[0] 

# Read the text file and put the content in a string
source_content = File.read(file_name) if  File.exists?(file_name)

if source_content
  
  source_content.gsub!(source_sentence, target_sentence)
  
# Open the text file in write mode
  target_file = File.open(file_name, 'w') 

# put in file the source file lines with replacement of the target sentence
  target_file.puts(source_content)
  target_file.close

  puts 'file succesfully treated'

elsif
  puts "File #{file_name} unknown o unreadable"
end
