=begin
Exercise3. Make use of the class Dir for the following -

Display your current working directory.
Create a new directory tmp under your working directory.
Change your working directory to tmp
Display your current working directory.
Go back to your original directory.
Delete the tmp directory.

=end

# Display your current working directory.
puts Dir.getwd

# Create a new directory tmp under your working directory.
Dir.mkdir(Dir.getwd + '/tmp')

# Change your working directory to tmp
Dir.chdir(Dir.getwd + '/tmp')

# Display your current working directory.
puts Dir.getwd

# Go back to your original directory.
Dir.chdir('..')

# Delete the tmp directory.
Dir.rmdir('tmp')