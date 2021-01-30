-- https://www.hackerrank.com/challenges/weather-observation-station-18/problem
-- Weather Observation Station 18
-- Query the Manhattan Distance between points (https://xlinux.nist.gov/dads/HTML/manhattanDistance.html)
-- The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|.

-- we can ingore abs() if we do max(LAT_N) - min(LAT_N) 
select round(abs(min(LAT_N) - max(LAT_N) ) + abs(min(LONG_W) - max(LONG_W)), 4) 
from station 