using Printf

function sumFactorial(a)
    s = BigInt(a)
    for i in 1:a-1
        s = s*(a-i)
    end
    str = @sprintf "%d" s
    return sum(map(x->parse(Int64, x), split(str, "")))
end

println(sumFactorial(BigInt(100)))