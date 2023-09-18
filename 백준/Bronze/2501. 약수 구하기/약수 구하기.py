x,y = map(int,input().split())

divisor_list = []

for i in range(x+1):
    if x % (i+1) == 0:
        divisor_list.append(i+1)

if len(divisor_list) < y:
    print(0)
else: 
    print(divisor_list[y-1])