USE ��4

SELECT PULPIT.PULPIT_NAME AS [�������], ISNULL(TEACHER.TEACHER_NAME, '***') AS [�������������]
FROM PULPIT LEFT OUTER JOIN TEACHER 
ON TEACHER.PULPIT = PULPIT.PULPIT
