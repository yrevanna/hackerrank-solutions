'''
Url: https://www.hackerrank.com/challenges/python-string-formatting/problem
Name: String Formatting
'''


def print_formatted(number):
    # your code goes here
    width = len(bin(number)[2:])

    for i in range(1, number + 1):
        print(str(int(i)).rjust(width), str(oct(i))[2:].rjust(width), str(
            hex(i))[2:].rjust(width).upper(), str(bin(i))[2:].rjust(width))


if __name__ == '__main__':
    n = int(input())
    print_formatted(n)
