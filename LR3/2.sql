use ��3
Create table ������
(
������������ nvarchar(20) primary key,
���� real unique not null,
���������� int
);
Create table ���������
(
������������_����� nvarchar(20) primary key,
����� nvarchar(50),
���������_���� nvarchar(20)
);
Create table ������
(
�����_������ int primary key,
������������_������ nvarchar(20) foreign key references 
������ (������������),
����_������� real,
���������� int,
����_�������� date, 
�������� nvarchar (20) foreign key references 
��������� (������������_�����)
)