#Demonstration to show assignment by reference

x = ["a",]
z = x

puts "Reset Values"
x = ["a",]
z = x
puts "x = #{x}, z = #{z}"
x = ["b,"]

puts "Reset Values"
puts "x = #{x}, z = #{z}"
x = ["a",]
z = x
puts "x = #{x}, z = #{z}"
z = ["b",]

puts "Reset Values"
x = ["a",]
z = x
puts "x = #{x}, z = #{z}"
z << "b"
puts "x = #{x}, z = #{z}"

puts "Reset Values"
puts "x = #{x}, z = #{z}"
z << "b"
puts "x = #{x}, z = #{z}"