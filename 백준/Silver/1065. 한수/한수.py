N= int(input())

def hansu(x):
    cnt = 0
    for x in range(1,x+1):
        num_list = list(map(int,str(x)))

        if x < 100:
            cnt += 1
        elif num_list[0] - num_list[1] == num_list[1] - num_list[2]:
            cnt += 1            
    return cnt
    
a = hansu(N)
print(a)