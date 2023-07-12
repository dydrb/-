N = int(input())

value = N
cnt = 0

while True:
    a = value // 10
    b = value % 10
    c = (a + b) % 10
    value = 10*b + c
    cnt += 1

    if value == N:
        break

print(cnt)