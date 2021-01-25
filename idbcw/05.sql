SELECT P.degree,SUM(C.credits) 
FROM programmes P JOIN courses C ON P.course = C.code 
GROUP BY P.degree
UNION SELECT D.code, 0 AS sum FROM degrees D 
WHERE NOT EXISTS (SELECT * FROM programmes P WHERE P.degree = D.code);
