'''
Url: https://www.hackerrank.com/challenges/merge-the-tools/problem
Name: Merge the Tools!
'''


def merge_the_tools(string, k):
    # your code goes here
    for i in range(int(len(string) / k)):
        subs = string[i*k: (i*k) + k]
        unique = ''
        for s in subs:
            if unique.find(s) == -1:
                unique += s
        print(unique)


if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)
