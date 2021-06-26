using Printf

a = BigInt(2)^1000

str = @sprintf "%d" a

sum = 0
for i in str
    global sum
    sum += parse(Int64, i)
end

println(sum)