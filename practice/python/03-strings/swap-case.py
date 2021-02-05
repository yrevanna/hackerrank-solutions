'''
Url: https://www.hackerrank.com/challenges/swap-case/problem
Name: sWAP cASE
'''


def swap_case(string):
    newString = ''
    for s in string:
        newString += s.lower() if s.isupper() == True else s.upper()
    return newString


if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)
