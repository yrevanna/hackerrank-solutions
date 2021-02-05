'''
Url: https://www.hackerrank.com/challenges/the-minion-game/problem
Name: The Minion Game
'''


def minion_game(string):
    # your code goes here
    s_scr = 0
    k_scr = 0
    vowels = 'AEIOU'
    for i in range(len(string)):
        if string[i] in vowels:
            k_scr += (len(s) - i)
        else:
            s_scr += (len(s) - i)
    if s_scr == k_scr:
        print('Draw')
    elif s_scr > k_scr:
        print('Stuart', s_scr)
    else:
        print('Kevin', k_scr)


if __name__ == '__main__':
    s = input()
    minion_game(s)
