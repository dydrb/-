H, M = input().split()

H = int(H)
M = int(M)

if M >= 45:
    M = M - 45

else:
    H = H - 1
    M = M + 15
    
if H == -1:
    H = 23

print(H,M)