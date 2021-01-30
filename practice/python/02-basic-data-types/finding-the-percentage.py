'''
Url: https://www.hackerrank.com/challenges/finding-the-percentage/problem
Name: Finding the percentage
'''

if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()

    arr = student_marks[query_name]
    avg = sum(arr)/len(arr)
    print("{0:.2f}".format(avg))
