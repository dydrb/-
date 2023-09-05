word = str.upper(input())
word_unique = list(set(word))

cnt=[]

for i in word_unique:
    cnt.append(word.count(i))

if cnt.count(max(cnt)) > 1:
    print('?')
else:
    print(word_unique[cnt.index(max(cnt))])