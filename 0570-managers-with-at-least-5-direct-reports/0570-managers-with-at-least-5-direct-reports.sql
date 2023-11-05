# Write your MySQL query statement below
select name
from employee
where id in
(
  #Checking which managerid has count>5 and matching with id
  select managerid 
  from employee 
  group by managerid
  having count(managerid)>=5
)