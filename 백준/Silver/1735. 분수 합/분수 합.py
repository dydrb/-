def gcd(a, b):
    if b == 0:
        return a
    a, b = b, a%b 
    return gcd(a, b)

bunja1, bunmo1 = map(int, input().split())
bunja2, bunmo2 = map(int, input().split())
n = bunja1*bunmo2 + bunmo1*bunja2
d = bunmo1*bunmo2
g = gcd(max(n,d), min(n,d))
print(n//g, d//g)