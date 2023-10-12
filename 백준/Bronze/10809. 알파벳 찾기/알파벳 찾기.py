string = input()
alphabet ='abcdefghijklmnopqrstuvwxyz'

for i in alphabet:
    if i in string:
        print(string.index(i), end= ' ')
    else:
        print( -1, end =' ')
