-- https://www.hackerrank.com/challenges/weather-observation-station-14/problem
-- Weather Observation Station 14

select round(max(LAT_N), 4)
from station
where LAT_N < 137.2345