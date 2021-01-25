SELECT S.uun, S.name 
FROM students S JOIN programmes P ON P.degree = S.degree 
JOIN exams E ON E.student = S.uun AND E.course = P.course
GROUP BY S.uun,S.name,P.degree HAVING count(DISTINCT E.course) = (SELECT COUNT(P2.course) FROM programmes P2 WHERE P2.degree = P.degree) 
UNION SELECT S.uun, S.name FROM students S WHERE NOT EXISTS (SELECT * FROM programmes P WHERE P.degree = S.degree);
