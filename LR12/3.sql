USE ��12;
GO

ALTER procedure PSUBJECT @p varchar(20)
as begin
	SELECT * from SUBJECT where SUBJECT = @p;
end;


CREATE table #SUBJECTs
(
	���_�������� varchar(20),
	��������_�������� varchar(100),
	������� varchar(20)
);
INSERT #SUBJECTs EXEC PSUBJECT @p = '���';
INSERT #SUBJECTs EXEC PSUBJECT @p = '����';
SELECT * from #SUBJECTs;
go

--drop table #SUBJECTs