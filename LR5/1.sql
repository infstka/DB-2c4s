USE ��5

SELECT PULPIT_NAME [�������], FACULTY.FACULTY [���������]
FROM FACULTY, PULPIT
WHERE FACULTY.FACULTY = PULPIT.FACULTY
AND
FACULTY.FACULTY IN (SELECT FACULTY FROM PROFESSION WHERE (PROFESSION_NAME LIKE '%����������%'
OR PROFESSION_NAME LIKE '%����������%'))
