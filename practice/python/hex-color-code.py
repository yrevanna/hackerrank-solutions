'''
Url: https://www.hackerrank.com/challenges/hex-color-code/problem
Name: Hex Color Code
'''
# Enter your code here. Read input from STDIN. Print output to STDOUT
import re


def getHexCode(line):
    if len(line) == 0:
        return
    return re.findall("#[0-9A-Fa-f]{6}|#[0-9A-Fa-f]{3}", line)


if __name__ == '__main__':
    reading = False
    n = int(input())
    for _ in range(n):
        line = input().strip()
        if line.find("}") > -1:
            reading = False
        elif reading:
            hexa = getHexCode(line)
            if hexa:
                for x in hexa:
                    print(x)
        elif line.find('{') > -1:
            reading = True
