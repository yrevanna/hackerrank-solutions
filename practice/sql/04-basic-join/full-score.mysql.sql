-- https://www.hackerrank.com/challenges/full-score/problem
-- Top Competitors

select hacker_id, name 
from (
    select h.hacker_id, h.name, count(*) as perfect_scores
    from submissions s
    inner join challenges c on c.challenge_id = s.challenge_id
    inner join difficulty  d on d.difficulty_level = c.difficulty_level
    inner join hackers h on h.hacker_id = s.hacker_id
    where s.score = d.score
    group by h.hacker_id, h.name
    having perfect_scores > 1
    order by perfect_scores desc, h.hacker_id
) as t1
