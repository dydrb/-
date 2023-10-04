from sys import stdin

N = int(input())
at_company = set() 

for _ in range(N): 
    name, status = stdin.readline().rstrip().split()
    
    if status == "enter":
        at_company.add(name)
    elif status == "leave":
        at_company.remove(name)

answer = list(at_company)
answer.sort(reverse=True)

for i in range(len(answer)):
    print(answer[i])