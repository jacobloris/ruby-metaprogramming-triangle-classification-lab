class Triangle
  attr_accessor :side_1, :side_2, :side_3, :all_sides
 
   def initialize(side_1, side_2, side_3)
     @side_1 = side_1
     @side_2 = side_2
     @side_3 = side_3
     @all_sides = [@side_1, @side_2, @side_3].sort
 
   end
 
   def kind
     if real_triangle
       begin
         raise TriangleError
       end
     end
 
     # (if) equilateral - 3 equal sides, check to see if side 1= side 2 and if side 2 = side 3
 
     if side_1 == side_2 && side_2 == side_3
       :equilateral
 
     # (els if) isosceles- 2 equal sides, check if side 1 = side 2, or if side 1 = side 3, or if side 2 = side 3
 
     elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
       :isosceles 
 
     # (else) scalene- no equal sides 
     else 
       :scalene
     end
 
   end
 
   def real_triangle
     all_sides.any? do |side|
       side < 0 || all_sides[0] + all_sides[1] <= all_sides[2]
     end
   end
     #check to see if the sum of the 2 sides of the triangle are greater than the third sidce of the triangle
     
 
 
   class TriangleError < StandardError
     # triangle error code
   end
 
 end