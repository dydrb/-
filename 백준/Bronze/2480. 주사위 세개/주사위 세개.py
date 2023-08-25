A, B, C = input().split()

A = int(A)
B = int(B)
C = int(C)

dice = []

dice.append(A)
dice.append(B)
dice.append(C)

if dice[0] == dice[1] == dice[2]:
    print(10000 + A*1000)

elif dice[0] == dice[1]: 
    print(1000 + A*100)
elif dice[2] == dice[1]:
    print(1000 + B*100)
elif dice[0] == dice[2]:
    print(1000 + C*100)
else:
    print(max(dice)*100)
