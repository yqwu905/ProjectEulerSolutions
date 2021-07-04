list = BigInt[]
aRange = BigInt(2):BigInt(100)
bRange = 2:100


for i in aRange
	for j in bRange
		if !(i^j ∈ list)
			push!(list, i^j)
		end
	end
end

println(length(list))
