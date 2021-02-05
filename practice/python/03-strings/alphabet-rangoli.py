'''
Url: https://www.hackerrank.com/challenges/alphabet-rangoli/problem
Name: Alphabet Rangoli
'''

import string


def print_rangoli(size):
    # your code goes here
    if size == 1:
        print('a')
        return

    alpha = [c for c in string.ascii_lowercase[:size]]
    alpha_rev = [c for c in string.ascii_lowercase[:size]]
    alpha_rev.reverse()
    col = 4 * size - 3  # 4n-3
    for i in range(1, size+1):
        centerstr = ['-'.join(alpha_rev[:i-1]), alpha_rev[i-1],
                     '-'.join(reversed(alpha_rev[:i-1]))]
        print('-'.join(centerstr).center(col, '-'))

    for i in range(1, size):
        centerstr = ['-'.join(reversed(alpha[i+1:])),
                     alpha[i], '-'.join(alpha[i+1:])]
        print('-'.join(centerstr).center(col, '-'))


if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)
