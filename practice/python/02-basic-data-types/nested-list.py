'''
Url: https://www.hackerrank.com/challenges/nested-list/problem
Name: Nested Lists
'''

if __name__ == '__main__':
    students = {}
    for _ in range(int(input())):
        name = input()
        score = float(input())

        if score in students.keys():
            students[score].append(name)
        else:
            students[score] = [name]

    keys = list(students.keys())
    keys.sort()

    lowest = students[keys[1]]
    lowest.sort()

    for name in lowest:
        print(name)
