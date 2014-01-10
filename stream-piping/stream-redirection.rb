puts "Enter some Names"
name = gets.chomp
i = 1
while name != ""
	puts "#{name} "*i
	i += 1
	name = gets.chomp
end
puts "Finished Names"