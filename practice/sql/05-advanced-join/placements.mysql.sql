-- https://www.hackerrank.com/challenges/placements/problem
-- Placements

select name from (
    select s.id, s.name, sp.salary, max(fp.salary) f_salary
    from students s
    inner join friends f on f.id = s.id
    inner join packages sp on sp.id = s.id
    inner join packages fp on fp.id = f.friend_id
    group by s.id, s.name, sp.salary
    having f_salary > sp.salary
    order by f_salary
) as t1