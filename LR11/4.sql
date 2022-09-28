USE ЛР11;

------A---------
set transaction isolation level READ UNCOMMITTED
begin transaction
-----t1---------
	select @@SPID, 'insert FACULTY' 'результат', *
		from FACULTY WHERE FACULTY = 'ИТ';
	select @@SPID, 'update PULPIT' 'результат', *
		from PULPIT WHERE FACULTY = 'ИТ';
	commit;

-----t2---------
-----B----------

begin transaction
	select @@SPID
	insert FACULTY VALUES
		('ИТ3','Информационных технологий');
	update PULPIT set FACULTY = 'ИТ' WHERE PULPIT = 'ИСиТ'

-----t1----------
-----t2----------

ROLLBACK;
SELECT * FROM FACULTY;
SELECT * FROM PULPIT;