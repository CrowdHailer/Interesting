array = [1,2,3]

puts "array = #{array.inspect}"
puts "array[1] = #{array[1]} AND array.[](1) = #{array.[](1)}"
puts

a = 7

puts "a = #{a}"
puts "a.<=(9) results in #{a.<=(9)} AND a <= 9 results in #{a <= 9}"
puts

puts "a = #{a}"
puts "a.!() results in #{a.!()} AND !a results in #{!a}"
puts

puts "HERE BE DRAGONS"
puts "q.=(5) throws Error therefore assignment is not a method of variable q."
#a.=(5)