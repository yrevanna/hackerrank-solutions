-- https://www.hackerrank.com/challenges/earnings-of-employees/problem
-- Top Earners

select earnings, count(*) as employees_count
from (
    select months * salary as "earnings", 
    (select max(months * salary) from employee) as max_earnings
    from employee
) as t1
where earnings = max_earnings
group by earnings