USE ��7

EXEC('CREATE VIEW [����������_���������]
	as select	AUDITORIUM		[���],
				AUDITORIUM_TYPE	[���],
				AUDITORIUM_NAME	[������������]
				from AUDITORIUM
					where AUDITORIUM_TYPE like ''��%''
					WITH CHECK OPTION
					')
INSERT ����������_��������� VALUES('201','��','200-3�');
SELECT * FROM ����������_���������;
DELETE FROM AUDITORIUM WHERE AUDITORIUM='201';
DROP VIEW ����������_���������;