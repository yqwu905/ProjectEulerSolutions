isSatisfy(x) = (string(x)==reverse(string(x))) && (string(x, base=2)==reverse(string(x, base=2)))

println(sum(filter(isSatisfy, 1:1000000)))
