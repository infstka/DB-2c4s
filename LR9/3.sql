USE ËÐ9;

create table #QUERY3LR9
(
	ID int, 
	FIELD varchar(20),
	cc int identity(1,1)
)
SET nocount on;
DECLARE @k int = 0;
while @k < 100
begin
	insert #QUERY3LR9(ID, FIELD)
		values(FLOOR(RAND()*30000), REPLICATE('julia',3) );
	SET @k = @k + 1; 
end

select * from #QUERY3LR9 where cc >500 and ID between 1500 and 5000 
CREATE index #QUERY3LR9_nonclu_2 on #QUERY3LR9(ID) INCLUDE(cc)
select CC from #QUERY3LR9 where ID > 500
--drop table #QUERY3LR9
