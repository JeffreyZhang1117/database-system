SELECT P.course FROM programmes P inner join degrees D ON P.degree = D.code WHERE D.type in ('UG','PG') GROUP BY P.course HAVING COUNT(DISTINCT D.type) =2;
