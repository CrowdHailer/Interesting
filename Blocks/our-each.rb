def our_each(arr)
	i = 0
	while i < arr.length
		yield(arr[i])
		i += 1
	end
end

owner = [1,2,"3"]

our_each(owner) do |variable|
	#puts "here " + variable.inspect
end

def our_each_with_index(arr)
	i = 0
	max = arr.length
	while  i < max
		yield(arr[i], i)
		i += 1	
	end
end

students = ["john", "jane", "jack", "Pete", "dave"]
#our_each_with_index(students) do |variable, index|
#	puts "#{index + 1}. #{variable.capitalize}"
#end

#students.each_with_index {|v, i| puts "#{i + 1}. #{v.capitalize}"}

def our_select(arr)
	i = 0
	output = []
	while i < arr.length
		condition = yield(arr[i])
		output << arr[i] if condition
		i+= 1
	end
	output
end

puts our_select(students) {|student| student[0] == "j"}

#puts students.select {|i| i[0] == "j"}