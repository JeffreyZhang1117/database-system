SELECT COUNT(TYPE) FROM degrees D JOIN students S ON  D.code = S.degree WHERE D.type = 'PG';
