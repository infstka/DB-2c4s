use ��4

SELECT *
FROM TEACHER FULL OUTER JOIN PULPIT
ON PULPIT.PULPIT = TEACHER.PULPIT 
WHERE (PULPIT.PULPIT IS NOT NULL)
