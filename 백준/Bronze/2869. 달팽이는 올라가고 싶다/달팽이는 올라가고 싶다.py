A, B, V = map(int, input().split())

high = V - A

if high % (A-B) == 0:
    day = int(high/(A-B))
else:
    day = int(high/(A-B) + 1)
print(day + 1)