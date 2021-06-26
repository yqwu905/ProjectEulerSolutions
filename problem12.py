from math import sqrt


def count_divisors(num):
    n = 0
    for i in range(1, int(sqrt(num))+1):
        if num % i == 0:
            n += 2
    return n

num = 1
i = 2
while True:
    num += i
    i += 1
    res = count_divisors(num)
    if res > 500:
        print(num, res)
        break