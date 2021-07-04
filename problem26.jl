using Primes

function cycleLength(x)
    n = 1
    v = Int64[]
    while true
        push!(v, n)
        n = n*10
        n = n%x
        if n==0
            return 0
        end
        if n ∈ v
            for i in 1:length(v)
                if v[i] == n
                    return length(v) - i + 1
                end
            end
        end
    end
end

function evaluateCycleDigits(x)
    p = factor(Dict, x)
    if 2 in keys(p) || 5 in keys(p)
        return 0
    end
    s = 1
    for i in keys(p)
        s = s * i^(p[i] - 1) * (i - 1)
    end
    s
end

max = 0
p = 0
for i in 1:1000
    global  max, p
    if cycleLength(i) > max
        max = cycleLength(i)
        p = i
    end
end

println("$(p):$(max)")
