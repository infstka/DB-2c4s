USE ��11;

-----A--------
SELECT * from PULPIT;
set transaction isolation level READ COMMITTED
begin transaction
select count(*) from PULPIT
where FACULTY = '��'; --��������� ���� ��������, ����� ��������� 0

-----t1-------
-----t2-------

select 'update PULPIT' '���������', count(*) --����� ��������� 1, �.�. ��������� ���������
from PULPIT where FACULTY = '��'; --�������� ��������������� ������
commit;
------B----

begin transaction

------t1-----

update PULPIT set FACULTY = '��' where PULPIT = '����';
commit;

------t2------