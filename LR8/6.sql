USE ��8;

select student.NAME as '���', student.IDGROUP as '������',
	case
	when progress.NOTE between 0 and 3 then '�����'
	when progress.NOTE between 4 and 6 then '������'
	when progress.NOTE between 7 and 8 then '�������'
	else '��������'
	end ������, COUNT(*)[����������]
	from student, PROGRESS where student.IDGROUP=17
group by student.NAME, student.IDGROUP,
	case
	when progress.NOTE between 0 and 3 then '�����'
	when progress.NOTE between 4 and 6 then '������'
	when progress.NOTE between 7 and 8 then '�������'
	else '��������'
	end