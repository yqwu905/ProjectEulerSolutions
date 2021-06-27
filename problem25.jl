function fibonacci(upperLimit)
    f = [BigInt(1), BigInt(1)]
    while f[end] < upperLimit
        push!(f, f[end] + f[end - 1])
    end
    return length(f)
end

@time println(fibonacci(BigInt(10)^999))