n = int(input())

buel_house = 1  
cnt = 1

while n > buel_house :
    buel_house += 6 * cnt
    cnt += 1

print(cnt)