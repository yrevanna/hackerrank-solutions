'''
Url: https://www.hackerrank.com/challenges/designer-door-mat/problem
Name: Designer Door Mat
'''

if __name__ == '__main__':
    args = input().split()
    col = int(args[1])
    row = int(args[0])
    # series is 2n-1
    for i in range(1, row, 2):
        print(('.|.' * i).center(col, '-'))
    print('WELCOME'.center(col, '-'))
    for i in range(1, row, 2):
        print(('.|.' * (row - (i+1))).center(col, '-'))
