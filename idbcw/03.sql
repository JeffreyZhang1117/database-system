SELECT E.student, MIN(E.grade),MAX(E.grade), COUNT(E.course) 
FROM Students S JOIN exams E ON S.uun = E.student 
GROUP BY E.student 
HAVING AVG (E.grade)>= 75;
