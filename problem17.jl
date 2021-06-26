function getLettersNum(a::Int64)
    if a==1000
        return 11
    end
    numTable1 = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
    numTable2 = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    numTable3 = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    s = 0
    if a > 100 && a%100!=0
        s = 3
    end
    if a >= 100
        s += length("hundred") + length(numTable1[div(a, 100)])
        if a%100!=0
            s += getLettersNum(a%100)
        end
    elseif a <= 10
        s += length(numTable1[a+1])
    elseif a < 20
        s += length(numTable2[a-10])
    else
        s += length(numTable3[div(a, 10) - 1])
        if a%10!=0
            s += length(numTable1[a%10 + 1])
        end
    end
    return s
end

println(sum(map(x->getLettersNum(x), 1:1000)))