function generateSequence(num)
	a = Vector{Int64}[]
	for i in 1:num
		push!(a, [i])
	end
	b = Vector{Int64}[]
	for i in 2:num
		for e in a
			for j in 1:num
				if !(j in e)
					push!(b, vcat(e, j))
				end
			end
		end
		# println(b)
		a = copy(b)
		b = Vector{Int64}[]
	end
	return a
end

function sequenceToNum(s)
	n = 0
	for i in 1:length(s)
		n += s[end + 1 - i]*10^(i-1)
	end
	n
end

function checkPossible(s)
	res = Int64[]
	n = length(s)
	for i in 1:n - 2
		for j in 1:n-i-1
			a = sequenceToNum(s[1:i])
			b = sequenceToNum(s[i+1:i+j])
			c = sequenceToNum(s[i+j+1:end])
			if a*b==c
				push!(res, c)
			end
		end
	end
	res
end

res = Int64[]
seq = generateSequence(9)
for s in seq
	r = checkPossible(s)
	for i in r
		if !(i in res)
			push!(res, i)
		end
	end
end
println(sum(res))
