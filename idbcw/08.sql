SELECT P.course FROM programmes P inner join degrees D ON P.degree = D.code WHERE D.type in ('PG') GROUP BY P.course HAVING COUNT( D.code) =1;
