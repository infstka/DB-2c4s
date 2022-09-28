use master 
create database LR4

on primary --первичн.файл.группа, явл.обяз.
	( name = N'LR4_mdf', filename = N'F:\Лабораторные работы\2 курс\2 семестр\БД\ЛР4\LR4_mdf.mdf', 
		size = 5120Kb, maxsize = 10240Kb, filegrowth = 1024Kb), 
	( name = N'LR4_ndf', filename = N'F:\Лабораторные работы\2 курс\2 семестр\БД\ЛР4\LR4__ndf.ndf', 
		size = 5120Kb, maxsize = 10240Kb, filegrowth = 10%), 
		
filegroup G1 
	( name = N'LR4_fg1_1', filename = N'F:\Лабораторные работы\2 курс\2 семестр\БД\ЛР4\LR4__g1_1.ndf', 
		size = 10240Kb, maxsize = 15360Kb, filegrowth = 1024Kb), 
	( name = N'LR4_fg1_2', filename = N'F:\Лабораторные работы\2 курс\2 семестр\БД\ЛР4\LR4__g1_2.ndf', 
		size = 2048Kb, maxsize = 5120Kb, filegrowth = 1024Kb), 
		
filegroup G2 
	( name = N'LR4_fg2_1', filename = N'F:\Лабораторные работы\2 курс\2 семестр\БД\ЛР4\LR4__g2_1.ndf', 
		size = 5120Kb, maxsize = 10240Kb, filegrowth = 1024Kb), 
	( name = N'LR4_fg2_2', filename = N'F:\Лабораторные работы\2 курс\2 семестр\БД\ЛР4\LR4_g2_2.ndf', 
		size = 2048Kb, maxsize = 5120Kb, filegrowth = 1024Kb) 
		
log on --журнал транзакций
	( name = N'LR4_UNIVER_log', filename=N'F:\Лабораторные работы\2 курс\2 семестр\БД\ЛР4\LR4__log.ldf', 
		size=5120Kb, maxsize=UNLIMITED, filegrowth=1024Kb) 


--.mdf 1, .ndf 2, log ф.ж.тр. (первич ф)
--Файл.группы - поименованный набор файлов БД
--упрощ. админ. БД
--есть оп-ры (копир, восст БД), рассм. файл.группу как единое целое
-- и вып. операции сразу для всей файл.группы