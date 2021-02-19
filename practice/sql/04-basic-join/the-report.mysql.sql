-- https://www.hackerrank.com/challenges/the-report/problem
-- The Report

select if(grade > 7, name, NULL), grade, marks
from students s
inner join grades g on s.marks >= g.min_mark and s.marks <= g.max_mark
order by grade desc, name