=begin
	Largest palindrome product
	Problem 4

	A palindromic number reads the same both ways. 
	The largest palindrome made from the product of 
	two 2-digit numbers is 9009 = 91 99.

	Find the largest palindrome made from the 
	product of two 3-digit numbers. 

=end

# initialize the largest palindrome made from 
# the product of two 3-digit numbers
p = 0

(100..999).each do |i|

	(100..999).each do |j|

		# figure out whether
		# i*j is a palindrome
		isp = i*j
		isp = isp.to_s

		if isp = isp.reverse
			
			isp = isp.to_i

			# is isp larger than 
			# the previous palindrome?
			if isp > p
				p = isp
			end
		end
	end

end

puts "The largest palindrome made from the \
product of two 3-digit numbers is #{p}"