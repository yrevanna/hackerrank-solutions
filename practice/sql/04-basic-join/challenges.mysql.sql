-- https://www.hackerrank.com/challenges/challenges/problem
-- Challenges

select h.hacker_id, h.name, count(*) as c_count
from hackers h
inner join challenges c on h.hacker_id = c.hacker_id
group by h.hacker_id, h.name
having 
    c_count = (
        --- include max count rows
        select max(c_count) from (
            select count(*) as c_count
            from hackers h
            inner join challenges c on h.hacker_id = c.hacker_id
            group by h.hacker_id
        ) as t1
    )  
    or 
    c_count in (
        --- include rows whoes count is 1
        select distinct c_count from (
            select h.hacker_id, count(*) as c_count
            from hackers h
            inner join challenges c on h.hacker_id = c.hacker_id
            group by h.hacker_id
        ) as t1 
        group by c_count
        having count(c_count) = 1
    ) 
order by c_count desc, hacker_id