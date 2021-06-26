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

maxPrime = 0
num = 600851475143
primes = getPrimeList(int(math.sqrt(num)))
for i in range(0, primes[0]):
    if num % primes[i] == 0:
        maxPrime = primes[i]
print(maxPrime)