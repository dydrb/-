import math

def is_prime(num):
    if num == 0 or num == 1:
        return False
    else:
        for i in range(2, int(math.sqrt(num)) + 1):
            if num % i == 0:
                return False
    return num

def next_num(num):
    while True:
        if is_prime(num) == False:
            num += 1
        elif is_prime(num):
            return num

n = int(input())

for _ in range(n):
    num = int(input())
    print(next_num(num))