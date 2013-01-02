=begin
	
Smallest multiple
Problem 5

2520 is the smallest number that 
can be divided by each of the 
numbers from 1 to 10 without any 
remainder.

What is the smallest positive 
number that is evenly divisible 
by all of the numbers from 1 to 20?

=end

# initialize 
smallest = 3628800

(3628800..20).each do |i|
	
	# initialize 
	a = true

	(2..10).each do |j|
		if i % j != 0
			a = false
		end
	end

	if a == true
		if i < smallest 
			smallest = i
		end
	end
end

puts "smallest number #{smallest}"