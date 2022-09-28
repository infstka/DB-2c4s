USE ЛР7

EXEC('CREATE VIEW Аудитории (Код, Наименование)
	as select	AUDITORIUM,
				AUDITORIUM_NAME
				from AUDITORIUM
					where AUDITORIUM_TYPE like ''ЛК%''
					')
INSERT Аудитории VALUES('201', '200-3а');
SELECT * FROM Аудитории;
SELECT * FROM AUDITORIUM;
DELETE FROM AUDITORIUM WHERE AUDITORIUM='201';
DROP VIEW Аудитории;