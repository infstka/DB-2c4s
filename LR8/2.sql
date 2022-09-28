USE ЛР8;

DECLARE @var1 int 
DECLARE @var2 int 
DECLARE @var3 int 
DECLARE @var4 int 
SELECT @var1 = SUM(AUDITORIUM_CAPACITY) FROM AUDITORIUM 
if @var1 > 200 
begin 
	select	@var2 = (select COUNT(*) as [Количество] from AUDITORIUM), 
			@var3 = (select AVG(AUDITORIUM_CAPACITY) as [Средняя] FROM AUDITORIUM) 
	set		@var4 = (select COUNT(*) as [Количество] from AUDITORIUM 
					where AUDITORIUM_CAPACITY < @var3) 
	select @var2 'Кол-во ауд.', @var3 'Средняя вместимость',
			@var4 'Кол-во ауд.< AVR',			
			100*(cast(@var4 as float)/cast(@var2 as float)) 'Процент ауд.< AVR'			
end 
else select @var1;