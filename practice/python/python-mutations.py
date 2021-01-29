'''
Url: https://www.hackerrank.com/challenges/python-mutations/problem
Name: Mutations
'''


def mutate_string(string, position, character):
    newstring = list(string)
    newstring[position] = character
    return ''.join(newstring)


if __name__ == '__main__':
    s = input()
    i, c = input().split()
    s_new = mutate_string(s, int(i), c)
    print(s_new)
