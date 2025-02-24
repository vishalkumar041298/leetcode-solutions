select stub.student_id, stub.student_name, stub.subject_name, coalesce(count(ex.subject_name), 0) as attended_exams from Examinations ex 
right join (select * from  Students st, Subjects sub) stub 
on (stub.student_id=ex.student_id and stub.subject_name=ex.subject_name)
group by stub.student_id, stub.student_name, stub.subject_name order by stub.student_id, stub.subject_name