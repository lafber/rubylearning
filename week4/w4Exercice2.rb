=begin
Write a Rectangle class. 
=end


class Rectangle
  
  def initialize(side1, side2)
    
    @side1 = side1.to_f
    @side2 = side2.to_f
    
  end
  
  def area()
    @side1 * @side2
  end
  
  
  def perimeter()
    (@side1+@side2)*2
  end
  
end

##### MAIN #######
r = Rectangle.new(23.45, 34.67) 
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"

