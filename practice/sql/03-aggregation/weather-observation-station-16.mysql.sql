-- https://www.hackerrank.com/challenges/weather-observation-station-16/problem
-- Weather Observation Station 16

select round(min(LAT_N), 4)
from station 
where LAT_N > 38.7780 