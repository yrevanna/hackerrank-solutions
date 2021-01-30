-- https://www.hackerrank.com/challenges/the-pads/problem
-- The PADS

select concat(name, '(', substring(OCCUPATION, 1, 1) ,')') as name
from OCCUPATIONS
order by name;

select concat('There are a total of ', count(OCCUPATION), ' ', lower(OCCUPATION), 's.') 
from OCCUPATIONS
group by OCCUPATION
order by count(*), OCCUPATION