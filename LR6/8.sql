USE ЛР6

SELECT g.PROFESSION, p.SUBJECT, round(avg(cast(p.NOTE as float(4))),2) [Средняя оценка]
From FACULTY f inner join GROUPS g 
            on f.FACULTY = g.FACULTY
            inner join STUDENT s  
            on g.IDGROUP = s.IDGROUP
			inner join PROGRESS p
			on s.IDSTUDENT = p.IDSTUDENT
WHERE g.FACULTY='ИДиП'                  
GROUP BY  g.PROFESSION, f.FACULTY, p.SUBJECT
EXCEPT
SELECT g.PROFESSION, p.SUBJECT, round(avg(cast(p.NOTE as float(4))),2) [Средняя оценка]
From FACULTY f inner join GROUPS g 
            on f.FACULTY = g.FACULTY
            inner join STUDENT s  
            on g.IDGROUP = s.IDGROUP
			inner join PROGRESS p
			on s.IDSTUDENT = p.IDSTUDENT
WHERE g.FACULTY='ХТиТ'                  
GROUP BY  g.PROFESSION, f.FACULTY, p.SUBJECT
