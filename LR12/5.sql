USE ��12;
GO

CREATE procedure SUBJECT_REPORT @p char(10) 
as begin
DECLARE @rc int;
begin try
	DECLARE @sb char(10), @r varchar(100) = '';
	DECLARE sbj CURSOR for 
		SELECT SUBJECT from SUBJECT where PULPIT = @p;
	if not exists(SELECT SUBJECT from SUBJECT where PULPIT = @p)
		raiserror('������', 11, 1);
	else 
	OPEN sbj;
	fetch sbj into @sb;
	print '��������: ';
	while @@fetch_status = 0
	begin
		set @r = rtrim(@sb) + ', ' + @r;  
		set @rc = @rc + 1;
		fetch sbj into @sb;
	end
	print @r;
	CLOSE sbj;
	return @rc;
end try
begin catch
	print '������ � ����������' 
	if error_procedure() is not null   
	print '��� ���������: ' + error_procedure();
	return @rc;
end catch;
end;


DECLARE @k2 int;  
EXEC @k2 = SUBJECT_REPORT @p ='����';  
print '���������� ���������: ' + cast(@k2 as varchar(3));
go

drop procedure SUBJECT_REPORT;