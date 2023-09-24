num_list = []

for i in range(1,10):
    a = int(input())
    num_list.append(a)

print(max(num_list))
print(num_list.index(max(num_list))+1)