=begin

|-----------------------|
| Week 5  | Exercice 2 |
|---------------------|

This exercise thanks to Kathy Sierra. Once upon a time in a software shop, two programmers were given the same spec and told to "build it". The Really Annoying Project Manager forced the two coders to compete, by promising that whoever delivers first gets one of those cool Aeron chairs all the Silicon Valley guys have.

The spec:
There will be shapes on a GUI, a square, a circle and a triangle. When the user clicks on a shape, the shape will rotate clockwise 360 degrees (ie. all the way around) and play an AIF sound file specific to that particular shape.

Go for it guys and show me your code.

Note: This exercise is about inheritance, method overriding and method overloading not about UI.

=end

# encoding: UTF-8

# Shape Class
class Shape 

  attr_reader :name

  @@sound_uri_folder = '/assets/sound/shape'

  def initialize(name)
    @name = name
  end

  def rotate(angle)
    puts "rotation of the #{self.class} #{@name} by #{angle}."
    play_sound()
  end
  
  def play_sound
    #gemsound.play("#{@@sound_uri_folder}/#{self.class}.mp3")
    puts "#{@name} is playing #{@@sound_uri_folder}/#{self.class}.aif "
  end

  def to_s
    "#{self.class} named #{@name}"
  end
    
end



# Square class
class Square < Shape
    
  def initialize(name, side, x_top, y_left, *vertex2)
    super(name)
    @side        = side
    @x_top       = x_top
    @y_left      = y_left 
    if vertex2.size == 2
      @x_bottom    = vertex2[0]
      @y_right     = vertex2[1]
      # check the side lenght
    elsif
      @x_bottom    = x_top + side
      @y_right     = y_left + side
    end
    
  end
  
  def rotate(angle)
    # calculate new coordinates and render
    super(angle) #play sound
  end
  
end


# Circle class
class Circle < Shape
  
  def initialize(name, x_center, y_center)
    super(name)
    @x_center = x_center
    @y_center = y_center
  end
  
end
  

# Triangle class
class Triangle < Shape
  
  def initialize(name, x_vertex_1, y_vertex_1, base, altitude)
    super(name)
    @x_vertex_1 = x_vertex_1
    @y_vertex_1 = y_vertex_1
    @base       = base
    @altitude   = altitude
  end
  
  def rotate(angle)
    # calculate new coordinates and render for a triangle
    super(angle) #play sound
  end
  
end


  ###########
 #  MAIN   #
###########

my_square   = Square.new('Square1', 50, 100, 100 )
my_circle   = Circle.new('Circle1', 75, 75)
my_triangle = Triangle.new('Triangle1', 150, 150, 100, 50 ) 

my_square.rotate(-45)
my_circle.rotate(90)
my_triangle.rotate(180)

