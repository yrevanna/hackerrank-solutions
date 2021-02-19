-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
-- Ollivander's Inventory

select id, age, coins_needed, power
from wands w
inner join wands_property p on w.code = p.code and coins_needed = (
    select min(coins_needed) from wands wi
    inner join wands_property pi on wi.code=pi.code
    where pi.age = p.age and wi.power = w.power
)
where is_evil = 0
order by power desc, age desc