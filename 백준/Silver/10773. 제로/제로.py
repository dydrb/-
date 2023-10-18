N = int(input())
num_list = []

for _ in range(N):
    num_input = int(input())

    if num_input == 0 :
        num_list.pop()
    else:
        num_list.append(num_input)

print(sum(num_list))