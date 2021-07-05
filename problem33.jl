res = Rational{Int64}[]

for i in 1:9
	for j in 1:9
		for k in 1:9
			if j!=k && ((j*10+i)//(i*10+k)==j//k)
				push!(res, (j*10+i)//(i*10+k))
			end
		end
	end
end

a = 1//1
for i in res
	global a
	a *= i
end
println(a)
