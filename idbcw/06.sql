select E.student,COUNT(CASE WHEN (E.grade >= 80) THEN 'A' END) A,
        COUNT(CASE WHEN(E.grade BETWEEN 60 AND 79) THEN 'B' END) B,
        COUNT(CASE WHEN(E.grade BETWEEN 40 AND 59) THEN 'C' END) C,
        COUNT(CASE WHEN(E.grade <40) THEN 'D' END) D 
        FROM exams E GROUP BY E.student;