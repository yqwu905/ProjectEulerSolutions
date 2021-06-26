
def isPalindromic(num):
    numList = []
    flag = True
    for i in str(num):
        numList.append(int(i))
    for i in range(0, int(len(numList)/2) + 1):
        if numList[i] != numList[len(numList) - i - 1]:
            flag = False
    return flag

max = 0
for i in range(500, 1000):
    for j in range(500, 1000):
        if isPalindromic(i * j):
            if i * j > max:
                max = i * j
print(max)