sum = 1
size = 1001
n = 1

for i in 3:2:size
	for j in 1:4
		global sum, n
		n += i-1
		sum += n
		# println([n, sum])
	end
end

println(sum)
