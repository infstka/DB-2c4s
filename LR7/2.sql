USE ЛР7

EXEC('CREATE view [Количество кафедр]
	as select	distinct(FACULTY.FACULTY_NAME)	[Факультет],
				count(PULPIT.FACULTY)	[Количество кафедр]
				
				from dbo.FACULTY inner join dbo.PULPIT
				on PULPIT.FACULTY=FACULTY.FACULTY
				group by FACULTY.FACULTY_NAME ')
SELECT * FROM [Количество кафедр];