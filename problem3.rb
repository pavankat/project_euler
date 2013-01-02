=begin
	
	Largest prime factor
	Problem 3

	The prime factors of 13195 are 5, 7, 13 and 29.

	What is the largest prime factor of the number 600851475143 ?

=end


# defines constant N whose prime factors will be found
N = 600851475143

# compare will go down
compare = N

# initialize
largestFactor = 0

# start with lowest prime number for counter
counter = 2

puts "counter is now #{counter}\n"
puts "compare is now #{compare}\n"
puts "largest factor is now #{largestFactor}\n\n\n"

while (counter * counter) < compare
    if (compare % counter == 0) 
    	puts "counter is now #{counter}\n"
        compare = compare / counter
        puts "compare is now #{compare}\n"
        largestFactor = counter
        puts "largest factor is now #{largestFactor}\n\n\n"
    else 
        counter += 1
    end
end

if (compare > largestFactor) 
	#the remainder is a prime number
    largestFactor = compare
end

puts "The largest factor is #{largestFactor}"
