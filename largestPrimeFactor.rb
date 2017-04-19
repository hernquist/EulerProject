
x = 600851475143.0
# x = 1000000001.0
loop_max = Math.sqrt(x).to_i
currentPrime = -1


def test_for_prime(num)
	return false if num % 2 == 0
	i = 3
	while i < num
		return false if num % i == 0
		i += 2	
	end
	return true
end

j = 2

while j < loop_max
	if x % j == 0
	  if test_for_prime ((x / j).to_i) 
	  	currentPrime = (x / j).to_i
	  	break	
	  elsif test_for_prime(j)
	  	currentPrime = j
	  end 			
	end
	j += 2
 	j = 3 if j == 4
end

puts "No prime factors" if currentPrime == -1
puts "Largest prime #{currentPrime}" if currentPrime > 1
