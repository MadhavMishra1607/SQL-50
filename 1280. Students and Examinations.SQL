SELECT s.student_id, s.student_name, sub.subject_name, count(e.subject_name) as attended_exams
FROM  Students s cross join Subjects sub left outer join  Examinations e
on e.subject_name = sub.subject_name
and e.student_id =s.student_id 
GROUP BY s.student_id, sub.subject_name
ORDER BY s.student_id, sub.subject_name