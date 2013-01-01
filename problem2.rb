=begin

	Even Fibonacci numbers

	Problem 2

	Each new term in the Fibonacci sequence 
	is generated by adding the previous two terms. 
	By starting with 1 and 2, the first 10 terms will be:

	1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

	By considering the terms in the Fibonacci 
	sequence whose values do not exceed four million, 
	find the sum of the even-valued terms.

=end

first = 1

second = 2

#initialize the first even Fibonacci number
fib = 2

#initialize the sum of all even Fibonacci 
#numbers whose values do not exceed 4*10^6
evenfibs = 0

while fib < 4000000

	if fib % 2 == 0
		
		evenfibs += fib

	end

	fib = first + second

	#move what two numbers 
	#need to be added to
	#get the next 
	#Fibonacci number
	first = second
	second = fib

end 

puts "sum of the Fibonacci even-valued \
terms whose values do not exceed four million: #{evenfibs}"


