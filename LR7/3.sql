USE ��7

EXEC('CREATE VIEW ��������� (���, ������������)
	as select	AUDITORIUM,
				AUDITORIUM_NAME
				from AUDITORIUM
					where AUDITORIUM_TYPE like ''��%''
					')
INSERT ��������� VALUES('201', '200-3�');
SELECT * FROM ���������;
SELECT * FROM AUDITORIUM;
DELETE FROM AUDITORIUM WHERE AUDITORIUM='201';
DROP VIEW ���������;