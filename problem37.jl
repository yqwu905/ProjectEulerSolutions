using Primes

function isSatisfy(x)
	s = string(x)
	for i in 1:length(s)-1
		if !(isprime(parse(Int64, s[1:end-i]))&&isprime(parse(Int64, s[1+i: end])))
			return false
		end
	end
	return true
end

println(sum(filter(isSatisfy, filter(isprime, 11:1000000))))
