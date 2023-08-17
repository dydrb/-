quiz = int(input())

for _ in range(quiz):
    ox = input()
    total_grade = 0
    x = 0
    for i in ox:
        if i == 'O':
            x += 1
        else:
            x = 0
        total_grade += x
    print(total_grade)