'''
Url: https://www.hackerrank.com/challenges/python-string-split-and-join/problem
Name: String Split and Join
'''


def split_and_join(line):
    # write your code here
    return '-'.join(line.strip().split())


if __name__ == '__main__':
    line = input()
    result = split_and_join(line)
    print(result)
