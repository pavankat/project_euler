=begin
	
	Largest prime factor
	Problem 3

	The prime factors of 13195 are 5, 7, 13 and 29.

	What is the largest prime factor of the number 600851475143 ?

=end

# defines constant N whose prime factors will be found
N = 600851475143
compare = N
largestFactor = 0
 
counter = 2
while (counter * counter) < compare
    if (compare % counter == 0) 
        compare = compare / counter
        largestFactor = counter
    else 
        counter++
    end
end

if (compare > largestFactor) 
	#the remainder is a prime number
    largestFactor = compare
end

puts "The largest factor is #{largestFactor}"
