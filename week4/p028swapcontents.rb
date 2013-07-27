=begin
------------------------
| Week 4  | Exercice 4 |
------------------------

Write a Ruby program (call it p028swapcontents.rb) to do the following. Take two text files say A and B. The program should swap the contents of A and B. That is after the program is executed, A should contain B's contents and B should contains A's contents.

=end

class SwapFileContent

 
  def initialize(file1, file2)
    @file1 = file1
    @file2 = file2
  end

 
  def load_files_content()
    @file1_content = File.read(@file1) if  File.exists?(@file1)
    @file2_content = File.read(@file2) if  File.exists?(@file2)
  end


  def write_file_content(file_name, file_content)
    
    # Open the first file in write mode and put 2nd file content
    file = File.open(file_name, 'w')
    file.puts(file_content)
    file.close
    
  end
  
  
  def swap()
    
    self.load_files_content()
    
    self.write_file_content(@file1, @file2_content)
    self.write_file_content(@file2, @file1_content)
    
    puts "Content swapping between #{@file1} and #{@file2} SUCCESSFULLY DONE"
    
  end
    
  
end



  ###########
 #  MAIN   #
###########

swap_my_files = SwapFileContent.new(ARGV[0], ARGV[1])

swap_my_files.swap()