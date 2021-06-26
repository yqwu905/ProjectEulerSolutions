function factor(a)
    res = [1]
    for i in 2:floor(Int64, sqrt(a))
        if a%i == 0
            push!(res, i)
            push!(res, div(a, i))
        end
    end
    sum(res)
end

checkedList = Int64[]
s = 0

for i in 1:10000
    global s
    if !(i in checkedList)
        a = factor(i)
        b = factor(a)
        if b==i && a!=b
            s += a + b
            push!(checkedList, a)
        end
        push!(checkedList, i)
    end
end

println(s)
