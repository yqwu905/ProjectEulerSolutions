import numpy as np
import math

def getPrimeList(maxNum):
    prime = np.zeros(maxNum, dtype = 'int32')
    visit = np.zeros(maxNum, dtype = 'int32')
    prime[0] = 1
    for i in range(2, maxNum):
        if(visit[i] == 0):
            #print('Find No.{} prime:{}'.format(prime[0], i))
            prime[prime[0]] = i
            prime[0] = prime[0] + 1
        for j in range(1, prime[0]):
            if i * prime[j] >= maxNum:
                break
            #print('Filter {} for prime {}'.format(i * prime[j], prime[j]))
            visit[i*prime[j]] = 1
            if i % prime[j] == 0:
                break
    return prime

def isDivisible(num):
    flag = True
    for i in range(3, 21):
        if num % i != 0:
            flag = False
            break
    return flag

primes = getPrimeList(21)
unit = 1
for i in range(1, primes[0]):
    unit = unit * primes[i]

n = 1
while True:
    if isDivisible(n * unit):
        break
    n += 1
print(n * unit)
        