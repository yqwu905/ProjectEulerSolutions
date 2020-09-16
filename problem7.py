import numpy as np

def getPrimeList(maxNum):
    prime = np.zeros(maxNum, dtype = 'int32')
    visit = np.zeros(maxNum, dtype = 'int32')
    prime[0] = 1
    for i in range(2, maxNum):
        if(visit[i] == 0):
            #print('Find No.{} prime:{}'.format(prime[0], i))
            prime[prime[0]] = i
            prime[0] = prime[0] + 1
            if prime[0] > 10001:
                break
        for j in range(1, prime[0]):
            if i * prime[j] >= maxNum:
                break
            #print('Filter {} for prime {}'.format(i * prime[j], prime[j]))
            visit[i*prime[j]] = 1
            if i % prime[j] == 0:
                break
    return prime

primes = getPrimeList(100000000)
print(primes[10001])