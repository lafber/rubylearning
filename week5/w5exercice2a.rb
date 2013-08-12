=begin
"There will be an amoeba shape on the screen, with the others. When the user clicks on the amoeba, it will rotate like the others, and play a .hif sound file. The other figures like rectangle rotate around the center. I want the amoeba shape to rotate around a point on one end, like a clock hand !"
=end

# encoding: UTF-8

# Shape Class
class Shape 

  attr_reader :name

  @@sound_uri_folder = '/assets/sound/shape'

  def initialize(name)
    @name = name
  end

  def on_click()
    rotate(360)
    play_sound()
  end

  def rotate(angle)
    puts "rotation of the #{self.class} #{@name} by #{angle}°."
  end
  
  def play_sound
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


class Amoeba < Shape
  
  def initialize(name)
    super(name)
  end
  
  def rotate(angle)
    puts "rotation of the #{self.class} #{@name} by #{angle}° around point on one end."
  end
  
  def play_sound
    puts "#{@name} is playing #{@@sound_uri_folder}/#{self.class}.hif "
  end
  
end

  ###########
 #  MAIN   #
###########


my_shapes = [
  Square.new('MySquare'),
  Circle.new('MyCircle'),
  Triangle.new('MyTriangle'),
  Amoeba.new('MyAmoeba'),
]
 
# Called when the respective shapes are clicked
my_shapes.each do |shape|
  shape.on_click
end

