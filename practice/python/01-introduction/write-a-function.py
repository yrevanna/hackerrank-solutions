'''
Url: https://www.hackerrank.com/challenges/write-a-function/problem
Name: Write a function
'''


def is_leap(year):
    '''
    For this reason, not every four years is a leap year. The rule is that if the year is divisible by 100 and not divisible by 400, leap year is skipped. The year 2000 was a leap year, for example, but the years 1700, 1800, and 1900 were not. The next time a leap year will be skipped is the year 2100
    '''
    if year % 100 == 0 and year % 400 != 0:
        return False
    return True if year % 4 == 0 else False


year = int(input())
print(is_leap(year))
