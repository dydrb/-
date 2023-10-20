N, M = map(int, input().split())
card_list = list(map(int, input().split()))
result = 0

for i in range(N):
    for j in range(i+1,N):
        for k in range(j+1,N):
            if card_list[i]+card_list[j]+card_list[k] > M:
                continue
            else:
                result = max(result, card_list[i]+card_list[j]+card_list[k])

print(result)