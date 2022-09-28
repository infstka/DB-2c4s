USE ЛР8;

declare @tt int=3, @x float=4, @z float;
if (@tt>@x) set @z=power(SIN(@tt),2);
if (@tt<@x) set @z=4*(@tt+@x);
if (@tt=@x) set @z=1-exp(@x-2);
print 'z='+cast(@z as varchar(10));

declare @ss varchar(100)=(select top 1 NAME from STUDENT)
select substring(@ss, 1, charindex(' ', @ss))
		+substring(@ss, charindex(' ', @ss)+1,1)+'.'
		+substring(@ss, charindex(' ', @ss, charindex(' ', @ss)+1)+1,1)+'.'

select NAME as 'Имя', 2019-YEAR(BDAY) as 'Возраст'		--у кого др в след.месяце
	from STUDENT
	where MONTH(BDAY)=MONTH(getdate())+1;