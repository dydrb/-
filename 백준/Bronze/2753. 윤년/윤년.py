X = int(input())

if X % 400 == 0:
    print(1)
elif X % 4 == 0 and X % 100 != 0:
    print(1)
else:
    print(0)