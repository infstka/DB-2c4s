USE ��7

EXEC('ALTER view [���������� ������] WITH SCHEMABINDING
	as select	distinct(FACULTY.FACULTY_NAME)	[���������],
				count(PULPIT.FACULTY)	[���������� ������]
				
				from dbo.FACULTY inner join dbo.PULPIT
				on PULPIT.FACULTY=FACULTY.FACULTY
				group by FACULTY.FACULTY_NAME ')
SELECT * FROM [���������� ������];
DROP VIEW [���������� ������];