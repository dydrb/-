num = int(input()) # 18 15
count = 0

while num >= 0: 
  if num % 5 == 0:
    count += (num // 5)
    print(count)
    break
  
  num -= 3 # 15
  count += 1
  
else:
  print(-1)