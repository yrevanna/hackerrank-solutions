-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem
-- Weather Observation Station 19
-- Query the Euclidean Distance between points (https://en.wikipedia.org/wiki/Euclidean_distance)
-- The distance between any two points on the real line is the absolute value of the numerical difference of their coordinates. Thus if p and q are two points on the real line, then the distance between them is given by: d(p,q) = |p-q|
-- In the Euclidean plane, let point p have Cartesian coordinates (p1,p2) and let point q have coordinates (q1,q2). Then the distance between p and q is given by:
-- d(p, q) = square root((q1-p1)2 + (q2 - p2)2)

select round( sqrt( power(max(LONG_W) - min(LONG_W), 2) + power(max(LAT_N) - min(LAT_N), 2) ), 4) 
from station 