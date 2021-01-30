-- https://www.hackerrank.com/challenges/the-company/problem
-- New Companies

select c.*, count(distinct lead_manager_code), count(distinct senior_manager_code),
count(distinct manager_code), count(distinct employee_code)
from company c
left join employee e using (company_code)
group by c.company_code,c.founder