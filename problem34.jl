function splitNum(x)
	res = Int64[]
	while x!=0
		push!(res, x%10)
		x = div(x,10)
	end
	res
end

isSatisfy(x) = sum(factorial.(splitNum(x))) == x

println(sum(filter(isSatisfy, 3:10^7)))
