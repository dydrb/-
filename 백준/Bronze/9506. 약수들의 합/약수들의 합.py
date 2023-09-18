while (1):
    x = int(input())

    if x == -1:
        break

    divisor_list = []

    for i in range(1,x):
        if x % (i) == 0:
            divisor_list.append(i)

    if sum(divisor_list) == x:
        print(x, " = ", " + ".join(str(i) for i in divisor_list), sep="")
    else:
        print(x, "is NOT perfect.")