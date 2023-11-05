# Write your MySQL query statement below
select ss.student_id, ss.student_name, ss.subject_name, count(e.student_id) as attended_exams
/* Using count of table examinations as on left join, unmatches columns are resulted as NULL
which helps track students who attended 0 exams as well
*/
from 
(select * 
from students
cross join subjects) as ss
left join examinations as e
on ss.student_id = e.student_id and ss.subject_name = e.subject_name
group by ss.student_id, ss.student_name, ss.subject_name
order by ss.student_id
