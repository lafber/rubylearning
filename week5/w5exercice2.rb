# encoding: UTF-8

# Shape Class
class Shape 

  attr_reader :name

  @@sound_uri_folder = '/assets/sound/shape'

  def initialize(name)
    @name = name
  end

  def click()
    rotate(360)
    play_sound()
  end

  def rotate(angle)
    puts "rotation of the #{self.class} #{@name} by #{angle}°."
  end
  
  def play_sound
    #gemsound.play("#{@@sound_uri_folder}/#{self.class}.mp3")
    puts "#{@name} is playing #{@@sound_uri_folder}/#{self.class}.aif "
  end

  def to_s
    "#{self.class} named #{@name}"
  end
    
end


class Square < Shape
    
  def initialize(name)
    super(name)
  end
  
end


class Circle < Shape
  
  def initialize(name)
    super(name)
  end
  
end
  

class Triangle < Shape
  
  def initialize(name)
    super(name)
  end
  
end


  ###########
 #  MAIN   #
###########

my_square   = Square.new('Square1')
my_circle   = Circle.new('Circle1')
my_triangle = Triangle.new('Triangle1') 

my_square.click()
my_circle.click()
my_triangle.click()

