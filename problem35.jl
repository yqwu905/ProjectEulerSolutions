using Primes

function splitNum(x)
	res = Int64[]
	while x!=0
		push!(res, x%10)
		x = div(x,10)
	end
	res
end

function sequenceToNum(s)
	n = 0
	for i in 1:length(s)
		n += s[i]*10^(i-1)
	end
	n
end

function rotation(x)
	r = splitNum(x)
	res = Int64[]
	for i in 1:length(r)
		push!(res, sequenceToNum(r))
		r = vcat(r[end], r[1:end-1])
	end
	res
end

isSatisfy(x) = sum(isprime.(rotation(x)))==length(splitNum(x))

println(length(filter(isSatisfy, filter(isprime, 2:1000000))))
