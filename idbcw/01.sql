SELECT S.uun FROM students S WHERE NOT EXISTS (SELECT E.student FROM exams E WHERE S.uun = E.student);
