USE ��7

EXEC('CREATE VIEW [����������]
	as select TOP 150	SUBJECT			[���],
						SUBJECT_NAME	[������������],
						PULPIT			[��� �������]
						from SUBJECT
						order by ������������')
SELECT * FROM [����������];
DROP VIEW [����������];