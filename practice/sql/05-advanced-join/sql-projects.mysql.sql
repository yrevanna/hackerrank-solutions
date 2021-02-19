-- https://www.hackerrank.com/challenges/sql-projects/problem
-- SQL Project Planning

set @p=date(now()), @r=0;
select start_date, end_date 
from (
    select min(start_date) as start_date, max(end_date) as end_date
    from (
        SELECT *,if(DATEDIFF(end_date, @p) = 1, concat('Project', @r), concat('Project', @r:=@r+1)) as project, @p:=end_date
        FROM Projects
        order by start_date
    ) as t1
    group by project
) as t2
order by datediff(end_date, start_date)