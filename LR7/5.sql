USE ЛР7

EXEC('CREATE VIEW [Дисциплины]
	as select TOP 150	SUBJECT			[Код],
						SUBJECT_NAME	[Наименование],
						PULPIT			[Код кафедры]
						from SUBJECT
						order by Наименование')
SELECT * FROM [Дисциплины];
DROP VIEW [Дисциплины];