'''
Url: https://www.hackerrank.com/challenges/capitalize/problem
Name: Capitalize!
'''

# Complete the solve function below.


def solve(s):
    ucase = []
    for word in s.split(' '):
        ucase.append(word[:1].upper() + word[1:])
    return ' '.join(ucase)


if __name__ == '__main__':
    s = input()
    print(solve(s))
