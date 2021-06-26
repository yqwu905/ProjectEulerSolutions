using ProgressMeter

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

@time for i in 1:28123
    if isAbundant(i)
        push!(abundantList, i)
    end
end

checkedList = Dict()

@time for i in 1:length(abundantList)
    for j in i:length(abundantList)
        a = abundantList[i] + abundantList[j]
        if a > 28123
            break
        end
        checkedList[a] = true
    end
end

@time println(sum(filter!(x->!(x in keys(checkedList)), [i for i in 1:28123])))