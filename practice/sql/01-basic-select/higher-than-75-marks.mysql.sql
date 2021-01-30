-- https://www.hackerrank.com/challenges/more-than-75-marks/problem
-- Higher Than 75 Marks

select name
from STUDENTS 
where marks > 75
order by substring(name, -3, 3),id