USE ЛР7

EXEC('CREATE VIEW [Преподаватель]
	as select	TEACHER	[Код],
				TEACHER_NAME [Имя препода],
				GENDER [Пол],
				PULPIT [Код кафедры]
				from TEACHER ')
SELECT * FROM [Преподаватель];
DROP VIEW [Преподаватель];