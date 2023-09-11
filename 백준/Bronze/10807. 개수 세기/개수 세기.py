x = int(input())
y = input()
z = input()
count = 0

y = y.split(' ')

for i in range(x):
    if y[i]==z:
        count += 1

print(count)