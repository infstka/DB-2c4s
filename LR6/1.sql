USE ��6

SELECT	min(AUDITORIUM_CAPACITY) [���. �����.],
		max(AUDITORIUM_CAPACITY) [����. �����.],
		avg(AUDITORIUM_CAPACITY) [������� �����.],
		count (*)					[���-�� ���������],
		sum(AUDITORIUM_CAPACITY) [��������� ���-��]
FROM AUDITORIUM;