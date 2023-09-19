x = int(input())
num_list = list(map(int, input().split()))
result = 0

for i in num_list:
    count = 0
    if i > 1:
        for j in range(2,i):
            if i % j == 0:
                count += 1

        if count == 0:
            result += 1
print(result)