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

(20..3628800).each do |i|

	# go through numbers 1 through 10
	(1..10).each do |j| 

		# if 1-10 are factors of j
		# then a is false
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

# should return 2520
puts "smallest number #{smallest}"