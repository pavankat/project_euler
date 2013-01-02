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
		product = i*j
		product = product.to_s

		if product == product.reverse
			
			reverse = product.reverse

			product = product.to_i

			# is product larger than 
			# the previous palindrome?
			if product > p

				puts "product: #{product}\n"
				puts "product reverse: #{reverse}\n\n\n"
				p = product
			end
		end
	end

end

puts "The largest palindrome made from the \
product of two 3-digit numbers is #{p}"