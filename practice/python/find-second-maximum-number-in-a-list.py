'''
Url: https://www.hackerrank.com/challenges/find-second-maximum-number-in-a-list/problem
Name: Find the Runner-Up Score!
'''

if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())

    scores = []
    for x in arr:
        if x not in scores:
            scores.append(x)

    scores.sort(reverse=True)
    print(scores[1])
