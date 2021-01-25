select E.student AS UUN, T.last_date
FROM (SELECT E.student, MAX(E.date) AS last_date FROM exams E GROUP BY E.student) T JOIN exams E ON T.last_date = E.date AND T.student = E.student 
GROUP BY E.student,T.last_date 
HAVING COUNT(DISTINCT E.course) > 1;
