'''
Url: https://www.hackerrank.com/challenges/string-validators/problem
Name: String Validators
'''


def strCheck(string, fn):
    check = False
    for s in string:
        if getattr(s, fn)() == True:
            check = True
            break
    return check


if __name__ == '__main__':
    s = input().strip()
    print(strCheck(s, 'isalnum'))
    print(strCheck(s, 'isalpha'))
    print(strCheck(s, 'isdigit'))
    print(strCheck(s, 'islower'))
    print(strCheck(s, 'isupper'))
