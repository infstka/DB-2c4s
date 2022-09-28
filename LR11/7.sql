USE ËÐ11;

select (select count(*) from dbo.PULPIT where FACULTY = 'ÈÄèÏ') 'Êàôåäðû ÈÄÈÏà', 
(select count(*) from FACULTY where FACULTY.FACULTY = 'ÈÄèÏ') 'ÈÄÈÏ'; 

select * from PULPIT

begin tran
	begin tran
	update PULPIT set PULPIT_NAME='Êàôåäðà ÈÄèÏà' where PULPIT.FACULTY = 'ÈÄèÏ';
	commit;
if @@TRANCOUNT > 0 rollback;