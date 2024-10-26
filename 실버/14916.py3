num = int(input())
numFiv = num // 5 
isCan = False
coin = 0
for i in range(numFiv+1):
    newNum = num - 5 * (numFiv - i)
    if (newNum % 2 == 0):
        isCan = True
        coin = (numFiv - i) + (newNum // 2)
        break

if isCan:
    print(coin)
else:
    print(-1)