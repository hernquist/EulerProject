def test_for_prime(num)
	return true if num == 2
	return false if num % 2 == 0
	i = 3
	while i < num
		return false if num % i == 0
		i += 2	
	end
	return true
end

#-----------------------------------------------------------------------------------
# problem 6 
#----------

def difference_between_squares_p6

	seriesLength = 100
	sum1 = 0
	sum2 = 0
	currentTerm = 0

	for i in 1..seriesLength
		currentTerm = i ** 2
		sum2 += i
		sum1 += currentTerm
	end

	squaredSum = sum2**2
	puts "The difference between #{squaredSum} and #{sum1} is #{squaredSum - sum1}"
	return squaredSum - sum1
end

#-----------------------------------------------------------------------------------
# problem 7 
#----------

def what_is_10001_prime
	counter=0
	num = 1
	while counter != 10001
		num += 1
		if test_for_prime(num)
			counter += 1
			puts "#{counter} | #{num}"
		end
	end
	num
end

#puts what_is_10001_prime

#-----------------------------------------------------------------------------------
# problem 8 
#----------

def prob8
	x = 7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450

	x = x.to_s
	a = [];
	for i in 1..(x.length-13)
		tempSum = 1
		for j in 0..12
			tempSum *= x[i+j].to_i 
		end
		puts "#{i} | #{tempSum}"
		a[i] = tempSum
	end

	high_num = a[1]
	high_index = 1
	for i in 2..(x.length-13)
		if a[i] > high_num 
			high_index = i
			high_num = a[i] 
		end
	end

	puts high_index

end

#-----------------------------------------------------------------------------------
# problem 10 
#-----------

def prob10
	sum = 0
	for i in 2..2000000
		puts "#{i} | #{sum}"
		sum += i if test_for_prime(i)
	end
	puts sum
end

prob10




