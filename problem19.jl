using Dates

function checkYear(year)
    isSunday(month) = Dates.dayofweek(Date(year, month, 1))==7;
    return sum(map(x->isSunday(x), 1:12))
end

println(sum(map(x->checkYear(x), 1901:2000)))