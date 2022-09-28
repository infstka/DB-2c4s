USE ЛР8;

CREATE table #LR7QUERY7
(	TIND int,
	TFIELD varchar(50),
	NUM int
);
SET nocount on;	--не вывод сообщения о вводе строк
declare @ii int=0;
while @ii<10
	begin
	insert #LR7QUERY7(TIND, TFIELD, NUM)
			values (floor(10*RAND()), replicate('Field',2), floor(10*RAND()));
	set @ii=@ii+1;
	end;
select * from #LR7QUERY7;
drop table #LR7QUERY7;
