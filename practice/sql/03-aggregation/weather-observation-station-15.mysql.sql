-- https://www.hackerrank.com/challenges/weather-observation-station-15/problem
-- Weather Observation Station 15

select round(LONG_W, 4)
from station 
where LAT_N  = (select max(LAT_N) from station where LAT_N < 137.2345)