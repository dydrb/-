def self_number(n):
    self_num = n
    while n != 0:
        self_num += n%10 
        n //= 10 
    return self_num

self_num_list = []

for i in list(range(1,10001)):
    self_num_list.append(self_number(i)) 
    if i not in self_num_list: 
        print(i)