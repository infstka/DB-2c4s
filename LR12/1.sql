USE ��12;
go

CREATE procedure PSUBJECT
as begin
	DECLARE @n int = (SELECT count(*) from SUBJECT);
	SELECT SUBJECT [���], SUBJECT_NAME [����������], PULPIT [�������] from SUBJECT;
	return @n;
end;

DECLARE @k int;
EXEC @k = PSUBJECT; -- ����� ��������� 
print '���������� ���������: ' + cast(@k as varchar(3));
go
--DROP procedure PSUBJECT;