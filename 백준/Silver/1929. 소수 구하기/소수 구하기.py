import math

def is_prime(num):
    if num == 0 or num == 1:
        return False
    else:
        for i in range(2, int(math.sqrt(num)) + 1):
            if num % i == 0:
                return False
    return num

min,max = map(int,input().split())
num_list = []

for i in range(min,max+1):
    if is_prime(i) != False:
        num_list.append(i)

for i in range(len(num_list)):
    print(num_list[i])