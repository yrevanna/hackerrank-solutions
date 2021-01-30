-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem
-- Type of Triangle

select 
case
    when ((a + b) <= c) or ((b + c) <= a) or ((c + a) <= b) then "Not A Triangle"
    when a = b and a=b and b= c and a=c then "Equilateral"
    when a=b or b=c or a=c then "Isosceles"
    else "Scalene"
end 
from triangles