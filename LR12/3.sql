USE ЛР12;
GO

ALTER procedure PSUBJECT @p varchar(20)
as begin
	SELECT * from SUBJECT where SUBJECT = @p;
end;


CREATE table #SUBJECTs
(
	Код_предмета varchar(20),
	Название_предмета varchar(100),
	Кафедра varchar(20)
);
INSERT #SUBJECTs EXEC PSUBJECT @p = 'ПСП';
INSERT #SUBJECTs EXEC PSUBJECT @p = 'СУБД';
SELECT * from #SUBJECTs;
go

--drop table #SUBJECTs