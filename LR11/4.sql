USE ��11;

------A---------
set transaction isolation level READ UNCOMMITTED
begin transaction
-----t1---------
	select @@SPID, 'insert FACULTY' '���������', *
		from FACULTY WHERE FACULTY = '��';
	select @@SPID, 'update PULPIT' '���������', *
		from PULPIT WHERE FACULTY = '��';
	commit;

-----t2---------
-----B----------

begin transaction
	select @@SPID
	insert FACULTY VALUES
		('��3','�������������� ����������');
	update PULPIT set FACULTY = '��' WHERE PULPIT = '����'

-----t1----------
-----t2----------

ROLLBACK;
SELECT * FROM FACULTY;
SELECT * FROM PULPIT;