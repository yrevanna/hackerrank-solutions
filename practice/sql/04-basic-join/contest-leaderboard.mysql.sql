-- https://www.hackerrank.com/challenges/contest-leaderboard/problem
-- Contest Leaderboard

select h.hacker_id, h.name, sum(t1.score) as s_score
from (
    select hacker_id, challenge_id, max(score) as score
    from submissions 
    group by hacker_id, challenge_id
) t1
inner join hackers h on h.hacker_id = t1.hacker_id
group by h.hacker_id, h.name
having s_score > 0
order by s_score desc, hacker_id
