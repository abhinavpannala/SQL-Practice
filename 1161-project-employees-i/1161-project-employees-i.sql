# Write your MySQL query statement below
select p.project_id, round(avg(e.experience_years),2) as average_years
from project as p
inner join employee as e
using (employee_id)
group by project_id