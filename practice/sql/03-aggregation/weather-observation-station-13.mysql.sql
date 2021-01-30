-- https://www.hackerrank.com/challenges/weather-observation-station-13/problem
-- Weather Observation Station 13

select round(sum(LAT_N), 4)
from station 
where LAT_N > 38.7880 and LAT_N < 137.2345