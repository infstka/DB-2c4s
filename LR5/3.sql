USE ��5

SELECT PULPIT_NAME [�������], FACULTY.FACULTY [���������]
FROM FACULTY INNER JOIN PULPIT
ON FACULTY.FACULTY = PULPIT.FACULTY
INNER JOIN PROFESSION
ON PROFESSION.FACULTY = FACULTY.FACULTY 
WHERE PROFESSION_NAME LIKE '%����������%' OR PROFESSION_NAME LIKE '%����������%'