nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

a = 1000000 - 1
remain = copy(nums)

for i in 9:-1:1
    global s, a
    digit = remain[div(a, factorial(i)) + 1]
    print(digit)
    a = a % factorial(i)
    filter!(x->x!=digit, remain)
end

print(remain[1])
println("")
