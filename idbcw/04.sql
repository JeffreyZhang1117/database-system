SELECT T.student 
FROM (SELECT E.student,COUNT(E.grade) failnum FROM exams E WHERE E.grade < 40 GROUP BY E.student) T 
JOIN (SELECT E.student,COUNT(E.course) FROM exams E  GROUP BY E.student) Q 
ON T.student = Q.student WHERE (T.failnum * 1.0)/ Q.count > 0.3;
