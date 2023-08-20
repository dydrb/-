arr = []

for i in range(1, 11):
    num = int(input())
    
    a = num % 42 
    arr.append(a)

result = set(arr)
print(len(result))