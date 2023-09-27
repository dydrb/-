array = []
max_value = 0
row = 0
col = 0

for _ in range(9):
    array.append(list(map(int, input().split())))

for i in range(9):
    for j in range(9):
        if array[i][j] >= max_value:
            max_value = array[i][j]
            row = i+1
            col = j+1

print(max_value)
print(row, col)