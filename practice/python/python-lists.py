'''
Url: https://www.hackerrank.com/challenges/python-lists/problem
Name: Lists
'''


def execute(arr, command, args):
    if command == 'print':
        print(arr)
    elif command == 'insert':
        arr.insert(int(args[0]), int(args[1]))
    elif command == 'remove':
        arr.remove(int(args[0]))
    elif command == 'append':
        arr.append(int(args[0]))
    elif command == 'sort':
        arr.sort()
    elif command == 'pop':
        arr.pop()
    elif command == 'reverse':
        arr.reverse()


if __name__ == '__main__':
    N = int(input())
    newlist = []
    for x in range(N):
        line = input().strip().split()
        command = line.pop(0)
        execute(newlist, command, line)
