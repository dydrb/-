H, M = input().split()
J = input()

H = int(H)
M = int(M)
J = int(J)

H += J // 60
M += J % 60


if M >= 60:
    H += 1
    M -= 60

if H >= 24:
    while H >= 24:
        H = H -24 

print(H,M)