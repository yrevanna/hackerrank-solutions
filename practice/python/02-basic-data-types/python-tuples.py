'''
Url: https://www.hackerrank.com/challenges/python-tuples/problem
Name: Tuples
'''

if __name__ == '__main__':
    n = int(input())
    integer_list = map(int, input().split())

    tup = tuple(integer_list)
    print(hash(tup))
