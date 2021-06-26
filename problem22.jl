function loadNameList()
    a = String[]
    f = open("p022_names.txt", "r")
    r = read(f, String)
    names = split(r, ",")
    map(x->push!(a, replace(x, "\""=>"")), names)
    sort!(a)
end

function calcNameScore(name, idx)
    sum(map(x->convert(Int64, name[x])-64, 1:length(name))) * idx
end

nameList = loadNameList()
scoreList = map(1:length(nameList)) do x
    calcNameScore(nameList[x], x)
end
println(sum(scoreList))