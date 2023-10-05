N, M = map(int, input().split())
arr_deud = set()
arr_bo = set()

for _ in range(N):
    arr_deud.add(input())

for _ in range(M):
    arr_bo.add(input())

arr_deudbo = sorted(list(arr_deud & arr_bo))
print(len(arr_deudbo))

for i in arr_deudbo:
    print(i)