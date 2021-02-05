'''
Url: https://www.hackerrank.com/challenges/find-a-string/problem
Name: Find a string
'''


def count_substring(string, sub_string):
    count = 0
    while(len(string) > 0):
        found = string.find(sub_string)
        if(found > -1):
            count += 1
            string = string[found+1:]
        else:
            break
    return count


if __name__ == '__main__':
    string = input().strip()
    sub_string = input().strip()

    count = count_substring(string, sub_string)
    print(count)
