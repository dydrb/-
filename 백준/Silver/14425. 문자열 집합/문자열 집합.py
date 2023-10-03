A,B = map(int,input().split())

string_list1 = []
string_list2 = []
count = 0

for i in range(A):
    string1 = input()
    string_list1.append(string1)

for i in range(B):
    string2 = input()
    string_list2.append(string2)

    if string2 in string_list1:
        count += 1

print(count)