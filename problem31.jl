coins = [1,2,5,10,20,50,100,200]
demandNum = 200
dp = zeros(BigInt, 201)
dp[1] = 1

for j in coins
	n = BigInt(0)
	for i in 2:201
		if i-j>=1
			dp[i] += dp[i - j]
		end
	end
end

println(dp)
println(dp[end])

