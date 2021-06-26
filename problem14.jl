using ProgressMeter

function chainLength(a::Int64)::Int64
    f = a
    len = 1
    while(f!=1)
        # println(f)
        f = isodd(f) ? 3*f + 1 : div(f,2);
        len+=1;
    end
    return len
end

# println(chainLength(13));
max = 0
p = 0
@showprogress for i in 1:1000000
    global max, p
    l = chainLength(i)
    if l > max
        max = l
        p = i
    end
end

println(p)