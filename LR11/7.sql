USE ��11;

select (select count(*) from dbo.PULPIT where FACULTY = '����') '������� �����', 
(select count(*) from FACULTY where FACULTY.FACULTY = '����') '����'; 

select * from PULPIT

begin tran
	begin tran
	update PULPIT set PULPIT_NAME='������� �����' where PULPIT.FACULTY = '����';
	commit;
if @@TRANCOUNT > 0 rollback;