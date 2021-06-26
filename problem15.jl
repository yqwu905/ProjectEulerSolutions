dim = 21

a = ones(Int64, dim, dim)

for i in 1:dim
    a[i, 1] = 1
    a[1, i] = 1
end

for i in 2:dim
    for j in 2:dim
        a[i, j] = a[i-1, j] + a[i, j-1]
    end
end

println(a[dim, dim])