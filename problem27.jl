using Primes

max = 0
p = 0

for a in -1000:1000
	for b in -1000:1000
		global max, p
		n = 0
		while isprime(n^2 + a*n + b)
			n+=1
		end
		if n > max
			#println([a,b,n])
			p = a * b
			max = n
		end
	end
	#println(a)
end

println(p)
