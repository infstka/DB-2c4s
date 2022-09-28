USE ЛР9;

CREATE index #QUERY3LR9_ID1  on #QUERY3LR9(ID)with (fillfactor = 65);

INSERT top(50)percent into #QUERY3LR9(ID, FIELD) select IND, FIELD  from #QUERY3LR9; 
use tempdb
SELECT name [Индекс], avg_fragmentation_in_percent [Фрагментация(%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), OBJECT_ID(N'#temp_table_2'), NULL, NULL, NULL) ss
       JOIN sys.indexes ii on ss.object_id = ii.object_id and ss.index_id = ii.index_id  
       where name is not null;

drop index #QUERY3LR9_ind1 on #QUERY3LR9