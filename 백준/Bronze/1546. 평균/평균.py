x = int(input())
score_list = list(map(int, input().split()))
new_score = []

for i in range(x):
    new_score.append(((score_list[i]/max(score_list))*100))

print(sum(new_score)/x)