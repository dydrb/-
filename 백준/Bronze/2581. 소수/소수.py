x = int(input())
y = int(input())
divisor_list = []

for i in range(x, y+1):
	for j in range(2, i+1):
		if j == i:
			divisor_list.append(i)
		if i % j == 0:
			break
		
if not divisor_list:
	print(-1)
else:
	print(sum(divisor_list))
	print(divisor_list[0])