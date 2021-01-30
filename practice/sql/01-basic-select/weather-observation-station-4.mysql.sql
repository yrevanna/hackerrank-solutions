-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem
-- Weather Observation Station 4

select (
    (select count(*) from station where city is not null) -  (select count(distinct city) from station)
) as total