-- https://www.hackerrank.com/challenges/japan-population/problem
-- Japan Population

select sum(population)
from city
where countrycode = 'JPN'