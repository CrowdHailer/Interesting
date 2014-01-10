# $stdout.puts Is equivalent to puts 
# $stdin.gets Is equivalent to gets

$stdout.puts "Enter some Names"
name = $stdin.gets.chomp
i = 1
while name != ""
	$stdout.puts "#{name} "*i
	i += 1
	name = $stdin.gets.chomp
end
puts "Finished Names"