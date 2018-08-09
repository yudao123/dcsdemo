# coding=utf-8

def fab_ratio(n):
    a, b = 1, 1
    ratio = 1.0
    for i in range(n):
        c = a + b
        a, b = b, c
        ratio = float(a)/b
    return ratio

if __name__ == '__main__':
    import os,sys
    if len(sys.argv) < 2:
        n = 1
    else:
        n = int(sys.argv[1])
    print(fab_ratio(n))
    # print('ready 2')
    
