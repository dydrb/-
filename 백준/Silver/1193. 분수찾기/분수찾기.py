x = int(input())
line = 1

while x > line:
    x -= line
    line += 1

if line % 2 == 0:
    son = x
    mother = line - x + 1
else:
    son = line - x + 1
    mother = x

print(son,'/',mother, sep="")