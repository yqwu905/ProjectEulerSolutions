sum = 2
a0 = 1
a1 = 2
while(a0+a1<=4000000):
    if (a0 + a1) % 2 == 0:
        #print(a0+a1)
        sum += a0 + a1
    a1 = a0 + a1
    #print(a1,end=' ')
    a0 = a1 - a0
print(sum)