import sys

N = int(sys.stdin.readline())
stack_list = []

for _ in range(N):
    command = sys.stdin.readline().split()
    order = command[0]

    if order == 'push':
        value = command[1]
        stack_list.append(value)

    elif order == 'pop':
        if len(stack_list) == 0:
            print(-1)
        else:
            print(stack_list.pop())

    elif order == 'size':
        print(len(stack_list))

    elif order == 'empty':
        if len(stack_list) == 0:
            print(1)
        else:
            print(0)
    
    elif order == 'top':
        if len(stack_list) == 0:
            print(-1)
        else:
            print(stack_list[-1])