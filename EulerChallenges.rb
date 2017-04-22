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
# problem 1 
#----------

def prob1
	sum = 0
	for i in 1..999
		if i % 3 == 0 
			sum += i
		elsif i % 5 == 0 
			sum += i
		end
	end
end

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

#-----------------------------------------------------------------------------------
# problem 11 
#-----------

def check_column(matrix, x_coor, y_coor)
	matrix[x_coor][y_coor] * 
	matrix[x_coor+1][y_coor] *
	matrix[x_coor+2][y_coor] *
	matrix[x_coor+3][y_coor]
end

def check_row(matrix, x_coor, y_coor)
	matrix[x_coor][y_coor] * 
	matrix[x_coor][y_coor+1] *
	matrix[x_coor][y_coor+2] *
	matrix[x_coor][y_coor+3]
end

def check_forward_diag(matrix, x_coor, y_coor)
	matrix[x_coor][y_coor] * 
	matrix[x_coor+1][y_coor+1] *
	matrix[x_coor+2][y_coor+2] *
	matrix[x_coor+3][y_coor+3]
end

def check_backward_diag(matrix, x_coor, y_coor)
	matrix[x_coor][y_coor] * 
	matrix[x_coor+1][y_coor-1] *
	matrix[x_coor+2][y_coor-2] *
	matrix[x_coor+3][y_coor-3]
end


def prob11

	x = []	

	x[0]  = [ 8,  2, 22, 97, 38, 15,  0, 40,  0, 75,  4,  5,  7, 78, 52, 12, 50, 77, 91,  8]
	x[1]  = [49, 49, 99, 40, 17, 81, 18, 57, 60, 87, 17, 40, 98, 43, 69, 48,  4, 56, 62,  0]
	x[2]  = [81, 49, 31, 73, 55, 79, 14, 29, 93, 71, 40, 67, 53, 88, 30,  3, 49, 13, 36, 65]
	x[3]  = [52, 70, 95, 23,  4, 60, 11, 42, 69, 24, 68, 56,  1, 32, 56, 71, 37,  2, 36, 91]
	x[4]  = [22, 31, 16, 71, 51, 67, 63, 89, 41, 92, 36, 54, 22, 40, 40, 28, 66, 33, 13, 80]
	x[5]  = [24, 47, 32, 60, 99,  3, 45,  2, 44, 75, 33, 53, 78, 36, 84, 20, 35, 17, 12, 50]
	x[6]  = [32, 98, 81, 28, 64, 23, 67, 10, 26, 38, 40, 67, 59, 54, 70, 66, 18, 38, 64, 70]
	x[7]  = [67, 26, 20, 68,  2, 62, 12, 20, 95, 63, 94, 39, 63,  8, 40, 91, 66, 49, 94, 21]
	x[8]  = [24, 55, 58,  5, 66, 73, 99, 26, 97, 17, 78, 78, 96, 83, 14, 88, 34, 89, 63, 72]
	x[9]  = [21, 36, 23,  9, 75,  0, 76, 44, 20, 45, 35, 14,  0, 61, 33, 97, 34, 31, 33, 95]
	x[10] = [78, 17, 53, 28, 22, 75, 31, 67, 15, 94,  3, 80,  4, 62, 16, 14,  9, 53, 56, 92]
	x[11] = [16, 39,  5, 42, 96, 35, 31, 47, 55, 58, 88, 24,  0, 17, 54, 24, 36, 29, 85, 57]
	x[12] = [86, 56,  0, 48, 35, 71, 89,  7,  5, 44, 44, 37, 44, 60, 21, 58, 51, 54, 17, 58]
	x[13] = [19, 80, 81, 68,  5, 94, 47, 69, 28, 73, 92, 13, 86, 52, 17, 77,  4, 89, 55, 40]
	x[14] = [ 4, 52,  8, 83, 97, 35, 99, 16,  7, 97, 57, 32, 16, 26, 26, 79, 33, 27, 98, 66]
	x[15] = [88, 36, 68, 87, 57, 62, 20, 72,  3, 46, 33, 67, 46, 55, 12, 32, 63, 93, 53, 69]
	x[16] = [ 4, 42, 16, 73, 38, 25, 39, 11, 24, 94, 72, 18,  8, 46, 29, 32, 40, 62, 76, 36]
	x[17] = [20, 69, 36, 41, 72, 30, 23, 88, 34, 62, 99, 69, 82, 67, 59, 85, 74,  4, 36, 16]
	x[18] = [20, 73, 35, 29, 78, 31, 90,  1, 74, 31, 49, 71, 48, 86, 81, 16, 23, 57,  5, 54]
	x[19] = [ 1, 70, 54, 71, 83, 51, 54, 69, 16, 92, 33, 48, 61, 43, 52,  1, 89, 19, 67, 48]

# check columns -- matrices were defined backwards
	highest_product = 0

	for vertical in 0..16
		(0..19).each do |horizontal|
			product = check_column(x, vertical, horizontal)
			puts product if product > highest_product
			highest_product = product if product > highest_product
		end
	end

	for vertical in 0..19
		(0..16).each do |horizontal|
			product = check_row(x, vertical, horizontal)
			puts product if product > highest_product
			highest_product = product if product > highest_product
		end
	end

	for vertical in 0..16
		(0..16).each do |horizontal|
			product = check_forward_diag(x, vertical, horizontal)
			puts product if product > highest_product
			highest_product = product if product > highest_product
		end
	end

	for vertical in 0..16
		(3..19).each do |horizontal|
			product = check_backward_diag(x, vertical, horizontal)
			puts product if product > highest_product
			highest_product = product if product > highest_product
		end
	end
end

#-----------------------------------------------------------------------------------
# problem 12 
#-----------

def number_of_factors(currentTerm)
	factors = 0
	for i in 1..((currentTerm**0.5).to_i)
		if currentTerm % i == 0 
			if currentTerm / i != i
				factors += 2
			else 
				factors += 1
			end
		end	
	end
	factors
end

def triangular_numbers(current_index, last_term)
	last_term + current_index
end

def prob11
	index = 2	
	currentTerm = 3
	puts "term #{index} is #{currentTerm}"
	while number_of_factors(currentTerm) <= 500
		index += 1
		currentTerm = triangular_numbers(index, currentTerm)
		puts "term #{index} is #{currentTerm}"
	end
	
end

#-----------------------------------------------------------------------------------
# problem 13 
#-----------

def prob13

x = []

x[0] =   135740250
x[1] =  7018260538
x[2] =  6617309629
x[3] =  6154908250
x[4] =  8063246676
x[5] =  4361726757
x[6] =  5889832738
x[7] =   272189318
x[8] =  1603153276
x[9] =  6757934951
x[10] = 9324193331
x[11] = 7944758178
x[12] = 5598838407
x[13] = 8628227828
x[14] = 1170094390
x[15] =  104293586
x[16] =  517255829
x[17] = 4970056938
x[18] = 4438377604
x[19] = 7779295145
x[20] = 5258350721
x[21] = 7223636045
x[22] =  733969412
x[23] =  512689692
x[24] = 2563049483
x[25] = 2956340691
x[26] = 7107928209
x[27] =  393682126
x[28] = 4375946515
x[29] = 9257766954
x[30] = 7864797581
x[31] = 7806860984
x[32] = 5590848030
x[33] =  693150332
x[34] = 6235447210
x[35] = 2633987085
x[36] =  315001271
x[37] = 8746004375
x[38] = 2552737307
x[39] = 7401875275
x[40] = 8770190271
x[41] = 1632866526
x[42] =  746255962
x[43] = 2810917141
x[44] = 5025333403
x[45] = 8420090470
x[46] = 6638784583
x[47] = 1441773470
x[48] = 2486764533
x[49] = 2310058822
x[50] = 3868218774
x[51] = 4507995236
x[52] =  326572967
x[53] = 7058596522
x[54] = 4765745501
x[55] = 3798879715
x[56] = 3226651381
x[57] = 1122869539
x[58] = 9879593635
x[59] =  388584903
x[60] = 3532961922
x[61] = 5523597457
x[62] = 1129967519
x[63] = 7770775672
x[64] = 7058077308
x[65] =  547126581
x[66] = 7563400500
x[67] = 7251250327
x[68] = 1296897789
x[69] = 3352399886
x[70] = 7929701337
x[71] = 3173312731
x[72] = 5914677504
x[73] = 3619626622
x[74] = 6944540724
x[75] = 5556214818
x[76] = 6088076852
x[77] = 8982642090
x[78] = 2876952786
x[79] = 9763878039
x[80] = 7408011116
x[81] = 4490851411
x[82] = 9069790714
x[83] = 6645795096
x[84] =  197230297
x[85] = 6085089252
x[86] = 2652315011
x[87] =  598436791
x[88] = 9028300699
x[89] = 4449733078
x[90] = 2488917353
x[91] = 3204149535
x[92] =  566631954
x[93] = 7822703280
x[94] = 2325230608
x[95] = 1980811197
x[96] = 8721859617
x[97] = 2284509516
x[98] = 2804609722
x[99] = 4330331690

sum = 0

	for i in 0..99
		sum += x[i]
	end
	sum
end

#-----------------------------------------------------------------------------------
# problem 14 
#-----------


def problem14
	highest_length = 0
	placeholder = 0
	for i in 2..1000000
		reset_counter = 0
		x = i
		while x != 1
			reset_counter += 1
			if x.even?
				x = x / 2
			else
				x = x * 3 + 1	
			end
		end

		if highest_length < reset_counter
			highest_length = reset_counter
			place_holder = i				
			puts "#{place_holder} | #{highest_length}"
		end
	end
end

#-----------------------------------------------------------------------------------
# problem 4 
#----------

def reverse_a_number(num)
	num = num.to_s.reverse().to_i
end

def palindrone(numb)
	numb.to_s == reverse_a_number(numb).to_s
end

def prob4
	highest_product = 0
	for i in 100..999	
		for j in 100..999
			product = i * j
			if palindrone(product) && product > highest_product
				highest_product = product
				puts "#{i} * #{j} = #{highest_product}"
			end
		end
	end
end

#-----------------------------------------------------------------------------------
# problem 15 
#-----------


#def sum_of_the_digits(num)
	#num.to_s.chars.map(&:to_i).reduce(:+)
	puts (2**1000).to_s.chars.map(&:to_i).reduce(:+)

#end
#sum_of_the_digits(2**1000)






