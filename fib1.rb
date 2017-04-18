an_array = [1, 2, 3]

sum = 2
for i in 3..40
	an_array.push(an_array[i-1] + an_array[i-2])
	break if an_array[i] > 4000000
	
	sum += an_array[i] if an_array[i] % 2 == 0
		
	puts "#{i}: #{sum}"
	 
end
