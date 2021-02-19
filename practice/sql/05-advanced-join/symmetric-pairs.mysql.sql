-- https://www.hackerrank.com/challenges/symmetric-pairs/problem
-- Symmetric Pairs

select t1.x, t1.y
from Functions as t1
inner join Functions as t2 on t1.x = t2.y and t2.x = t1.y
group by t1.x, t1.y
having count(t1.x) > 1 or t1.x < t1.y
order by t1.x