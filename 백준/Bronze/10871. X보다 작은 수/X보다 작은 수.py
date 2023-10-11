N, X = map(int, input().split())
A_list = list(map(int, input().split()))

for i in range(N):
    if A_list[i] < X:
        print(A_list[i], end=" ")