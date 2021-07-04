function splitNum(x)
	res = Int64[]
	while x!=0
		push!(res, x%10)
		x = div(x,10)
	end
	res
end

isSatisfy(x) = x==sum(map(x->x^5, splitNum(x)))

println(sum(filter(isSatisfy, 2:1000000)))
