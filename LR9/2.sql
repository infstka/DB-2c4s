USE ��9;

create table #QUERY2LR9
(	ID int, 
	FIELD varchar(20)
)
SET nocount on;		--�� ����� ��������� � ����� �����
DECLARE @i int = 0;
while @i < 100
	begin
		insert #QUERY2LR9(ID, FIELD)
			values(FLOOR(RAND()*10000), REPLICATE('FIELD',2));
		SET @i = @i + 1; 
	end

select * from #QUERY2LR9 where ID between 1500 and 5000 order by ID 
	checkpoint;				--�������� ��
	DBCC DROPCLEANBUFFERS;	--�������� �������� ���
CREATE clustered index #QUERY2LR9_cl on #QUERY2LR9(ID asc)
drop table #QUERY2LR9