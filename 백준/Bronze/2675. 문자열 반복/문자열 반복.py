x = int(input())

for i in range(x):
    num, char = map(str, input().split())
    num = int(num)
    char = list(char)

    for j in range(len(char)):
        print(char[j]*num ,end = "")
    print("")