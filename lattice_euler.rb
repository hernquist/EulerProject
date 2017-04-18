@a = [1]
@d = [2]

def findsum(j)
	
	j -= 1
 	return_Sum = @a[j] + @d[j]
 	j -= 1
	while j > 0
		return_Sum += @a[j]
		j -= 1
	end
	return_Sum
end



for i in 1..20
	if i == 1
		@a[1] = 1
	elsif @a[i] = findsum(i)
	end

	@d[i] = @a[i] * 2
			
	puts "#{i} | #{@a[i]} | #{@d[i]}"

end
print "What length would like to test for a square? "
length = gets.chomp.to_i

product = 1

for i in length+1..2*length #3 by 3
	product *= i
	product /= (i - length)
end

puts product



