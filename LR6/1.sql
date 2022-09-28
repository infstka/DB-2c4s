USE ЛР6

SELECT	min(AUDITORIUM_CAPACITY) [Мин. вмест.],
		max(AUDITORIUM_CAPACITY) [Макс. вмест.],
		avg(AUDITORIUM_CAPACITY) [Средняя вмест.],
		count (*)					[Кол-во аудиторий],
		sum(AUDITORIUM_CAPACITY) [Суммарное кол-во]
FROM AUDITORIUM;