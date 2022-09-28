USE ЛР8;

select student.NAME as 'Имя', student.IDGROUP as 'Группа',
	case
	when progress.NOTE between 0 and 3 then 'Плохо'
	when progress.NOTE between 4 and 6 then 'Хорошо'
	when progress.NOTE between 7 and 8 then 'Отлично'
	else 'Идеально'
	end Оценка, COUNT(*)[Количество]
	from student, PROGRESS where student.IDGROUP=17
group by student.NAME, student.IDGROUP,
	case
	when progress.NOTE between 0 and 3 then 'Плохо'
	when progress.NOTE between 4 and 6 then 'Хорошо'
	when progress.NOTE between 7 and 8 then 'Отлично'
	else 'Идеально'
	end