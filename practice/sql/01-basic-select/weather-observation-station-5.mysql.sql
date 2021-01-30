-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem
-- Weather Observation Station 5

(select city, length(city) as len
from station
order by len,city 
limit 1)

union 

(select city, length(city) as len
from station
order by len desc, city
limit 1)