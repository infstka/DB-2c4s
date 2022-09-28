USE ЛР11;

-----A--------
SELECT * from PULPIT;
set transaction isolation level READ COMMITTED
begin transaction
select count(*) from PULPIT
where FACULTY = 'ИТ'; --Указывает одно значение, видим результат 0

-----t1-------
-----t2-------

select 'update PULPIT' 'результат', count(*) --здесь результат 1, т.к. произошло изменение
from PULPIT where FACULTY = 'ИТ'; --работает неповторяющееся чтение
commit;
------B----

begin transaction

------t1-----

update PULPIT set FACULTY = 'ИТ' where PULPIT = 'ИСиТ';
commit;

------t2------