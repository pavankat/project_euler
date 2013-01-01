=begin
	
	Largest prime factor
	Problem 3

	The prime factors of 13195 are 5, 7, 13 and 29.

	What is the largest prime factor of the number 600851475143 ?

=end

#lets find the largest 
#prime factor of 147 = 3*7*7
#which is 7

number = 147

(2..100).each do |i|

	 if number % i == 0
	 	puts "#{i}\n"
	 end

end