USE ЛР7

EXEC('CREATE VIEW [Лекционные_аудитории]
	as select	AUDITORIUM		[Код],
				AUDITORIUM_TYPE	[Тип],
				AUDITORIUM_NAME	[Наименование]
				from AUDITORIUM
					where AUDITORIUM_TYPE like ''ЛК%''
					WITH CHECK OPTION
					')
INSERT Лекционные_аудитории VALUES('201','ЛК','200-3а');
SELECT * FROM Лекционные_аудитории;
DELETE FROM AUDITORIUM WHERE AUDITORIUM='201';
DROP VIEW Лекционные_аудитории;