USE ��15;
insert into STUDENT(IDGROUP, NAME, BDAY, INFO)
	values(18, 'NAME', '01.01.1999',
	'<�������>
		<������� �����="��" �����="1234567" ����="01.01.1999" />
		<�������>+375291234567</�������>
		<�����>
			<������>��������</������>
			<�����>City</�����>
			<�����>Street</�����>
			<���>House</���>
			<��������>Kv</��������>
		</�����>
	</�������>');
select * from STUDENT where NAME = 'Name';
update STUDENT set INFO = '<�������>
		<������� �����="��" �����="1234567" ����="01.01.1999" />
		<�������>+375291234567</�������>
		<�����>
			<������>��������</������>
			<�����>City</�����>
			<�����>Street</�����>
			<���>House</���>
			<��������>Kv</��������>
		</�����>
	</�������>' where NAME='Name.'
select NAME[���], INFO.value('(�������/�������/@�����)[1]', 'char(2)')[����� ��������],
	INFO.value('(�������/�������/@�����)[1]', 'varchar(20)')[����� ��������],
	INFO.query('/�������/�����')[�����]
		from  STUDENT
			where NAME = 'Name';