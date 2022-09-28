use tempdb

CREATE index #QUERY3LR9_ID  on #QUERY3LR9(ID);

SELECT	name [Индекс],
		avg_fragmentation_in_percent [Фрагментация(%)] 
	FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'), 
  OBJECT_ID(N'#QUERY3LR9'), NULL, NULL, NULL) ss
  JOIN sys.indexes ii on ss.object_id = ii.object_id and ss.index_id = ii.index_id 
  where name is not null;

INSERT top(10000) #QUERY3LR9(ID, FIELD) select ID, FIELD from #QUERY3LR9;

ALTER index #QUERY3LR9_ID on#QUERY3LR9 reorganize; 
ALTER index #QUERY3LR9_ID  on #QUERY3LR9 rebuild with (online = off);

drop index #QUERY3LR9_ID on #QUERY3LR9