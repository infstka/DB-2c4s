Use master
go
create database UNIVER
on primary
( name = N'UNIVER_mdf', filename = N'F:\������������ ������\2 ����\2 �������\��\��3\UNIVER_mdf.mdf',
size = 10240Kb, maxsize = UNLIMITED, filegrowth = 1024Kb)
log on
(name = N'UNIVER_log', filename = N'F:\������������ ������\2 ����\2 �������\��\��3\UNIVER_log.ldf',
size=10240Kb, maxsize=2048Gb, filegrowth=10%)
go