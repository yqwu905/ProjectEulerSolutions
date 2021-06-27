upperLimit = 20161

function factor(a)
    res = [1]
    for i in 2:floor(Int64, sqrt(a))
        if a%i == 0
            push!(res, i)
            if i!=div(a,i)
                push!(res, div(a, i))
            end
        end
    end
    sum(res)
end

isAbundant(x) = factor(x)>x

abundantList = Int64[]

for i in 1:upperLimit
    if isAbundant(i)
        push!(abundantList, i)
    end
end

checkedList = Dict()
idx = 0

for i in abundantList
    global idx
    idx += 1
    for j in abundantList[idx:end]
        a = i + j
        if a > upperLimit
            break
        end
        checkedList[a] = true
    end
end

println(sum(filter!(x->!(x in keys(checkedList)), [i for i in 1:upperLimit])))