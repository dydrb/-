while True:
    X = input()

    if X == '0':
        break

    if X[:len(X)]==X[::-1]:
        print('yes')
    else:
        print('no')