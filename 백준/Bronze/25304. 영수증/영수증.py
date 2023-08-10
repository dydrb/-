X = int(input())
N = int(input())

list = []

for i in range(1,N+1):
    a, b = input().split()
    a = int(a)
    b = int(b)
    A = (a*b)
    list.append(A) 

if sum(list) == X:
    print("Yes")
else:
    print("No")