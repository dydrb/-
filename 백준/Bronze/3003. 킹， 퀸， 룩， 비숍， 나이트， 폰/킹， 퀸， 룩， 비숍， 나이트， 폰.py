chess_list = [1,1,2,2,2,8]
x = list(map(int,input().split()))

for i in range(6):
    print(chess_list[i] - x[i], end=' ')