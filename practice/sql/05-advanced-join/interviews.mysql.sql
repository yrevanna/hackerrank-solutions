-- https://www.hackerrank.com/challenges/interviews/problem
-- Interviews

select c.contest_id, c.hacker_id, c.name,
COALESCE(sum(total_submissions), 0) as a, COALESCE(sum(total_accepted_submissions),0) as b, 
COALESCE(sum(total_views), 0) as c, COALESCE(sum(total_unique_views),0) as d
from contests c
inner join colleges col on c.contest_id = col.contest_id
inner join challenges chal on chal.college_id = col.college_id
left join (
    select challenge_id, sum(total_views) as total_views, sum(total_unique_views) as total_unique_views
    from view_stats 
    group by challenge_id
) vs on chal.challenge_id = vs.challenge_id 
left join (
    select challenge_id, sum(total_submissions) as total_submissions, sum(total_accepted_submissions) as total_accepted_submissions 
    from submission_stats group by challenge_id
) ss on chal.challenge_id = ss.challenge_id
group by c.contest_id, c.hacker_id, c.name
having (a+b+c+d) > 0
order by c.contest_id



