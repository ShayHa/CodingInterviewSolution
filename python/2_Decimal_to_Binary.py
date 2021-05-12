# using while
def dec_to_bin(input_n):
    FLAG = True
    ls = []
    n = 0
    while FLAG:
        po = pow(2, n)
        if po > input_n:
            FLAG = False
        else:
            n += 1
            ls.append(po)
    s = ''
    for x in ls[::-1]:
        if input_n - x >= 0:
            s += '1'
            input_n -= x
        else:
            s += "0"
    return s

# Second way
def dec_to_bin_v2(n):
    bi = ''
    while n != 0:
        bi += f'{n % 2}'
        n = n // 2
    return bi[::-1]

# Third way using format
def dec_to_bin_v3(n):
    return f'{n:b}'
