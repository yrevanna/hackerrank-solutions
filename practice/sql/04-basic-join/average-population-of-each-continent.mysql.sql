-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
-- Average Population of Each Continent

select country.continent, floor(avg(city.population))
from city 
inner join country on city.countrycode = country.code
group by country.continent